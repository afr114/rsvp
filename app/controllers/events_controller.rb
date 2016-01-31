class EventsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @events = current_user.events.all
  end

  def new
    @event = Event.new
  end

  def create
    @user = current_user
    @event = Event.create(event_params)
    binding.pry
    if @event.save
      @event.user = @user
      @event.save
      flash[:notice] = "Event successfully created"
      redirect_to new_event_location_path(@event)
    else
      render :new
    end
  end

  def show
    require 'httparty'
    @user = current_user
    @event = Event.find(params[:id])
    @start = @event.start_date.to_date.strftime("%m/%d/%Y")
    @end = @event.end_date.to_date.strftime("%m/%d/%Y")
    @locations = @event.locations
    @guests = []
    @event.guests.each do |guest|
      if guest.user
        user = guest.user
        @guests.push(user)
      end
    end
    @guest = current_user.guests.where(event_id: @event.id).first()
    #//look over here shannon!
    if @guest
      @prices = {}
      if !@guest.rooms.where(event_id: @event.id).any?
        @locations.each do |location|
          @prices[location.name] = {}
          response = HTTParty.get("http://terminal2.expedia.com/x/hotels?hotelids=" + location.hotelid + "&dates=" + @event.start_date.strftime("%Y-%m-%d") + "," + @event.end_date.strftime("%Y-%m-%d") + "&apikey=" + "3FD8jYfm0LbZsxOcVZ66f89vByNPKXQB")
          if response["HotelInfoList"]
            @prices[location.name]['price'] = "$" + response["HotelInfoList"]["HotelInfo"]["Price"]["TotalRate"]["Value"]
          else
            @prices[location.name]['price'] = "Unavailable"
          end
          if @prices[location.name]['price'] != "Unavailable"
            @prices[location.name]['query'] = 'https://www.expedia.com/' + location.city + '-Hotels-' + location.name.split(' ').join('-') + '.h' + location.hotelid + '.Hotel-Information'
          else
            @prices[location.name]['query'] = nil
          end
        end
      end
    end
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.infowindow location.name
      marker.lat location.latitude
      marker.lng location.longitude
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.new
    if @event.update(event_params)
      flash[:notice] = "Event successfully updated"
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :end_date)
  end
end

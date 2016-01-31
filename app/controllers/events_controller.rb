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
    @event.new(event_params)
    if @event.save
      flash[:notice] = "Event successfully created"
      redirect_to @event
    else
      redirect_to new_event_lo
    end
  end

  def show

    @user = current_user
    @event = Event.find(params[:id])
    @locations = @event.locations
    @guests = []
    @event.guests.each do |guest|
      if guest.user
        user = guest.user
        @guests.push(user)
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
    params.require(:event).permit(:title, :description)
  end
end

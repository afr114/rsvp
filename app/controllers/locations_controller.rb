class LocationsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @events = current_user.events.all
  end

  def new
    @user = current_user
    @event = Event.find(params[:event_id])
    @location = Location.new
  end

  def create
    binding.pry
    @user = current_user
    @event = Event.find(params[:event_id].to_i)
    @address = params[:search].split(",")
    binding.pry
    @name = @address[0]
    @street = @address[1]
    @city = @address[2]
    @state = @address[3]
    @location = Location.create(:name => @name, :street => @street, :city => @city, :state => @state, :event_id => params[:event_id].to_i)


    if @user == @event.user
      redirect_to user_event_path(@user, @event)
    else
      @start_date = @event.start_date
      @end_date = @event.end_date
      @guest = @event.find_guest(@user)
      # this is the line that doesn't work because it can't extract the guest id
      # @room = Room.create(:start_date => @start_date, :end_date => @end_date, :location_id => @location.id, :event_id => @event.id, :guest_id => @guest.id)
      @room = Room.create(:start_date => @start_date, :end_date => @end_date, :location_id => @location.id, :event_id => @event.id)

      @room.save
      redirect_to user_event_path(@user, @event)
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def location_params
    params.require(:location).permit(:search, :name, :street, :state, :city)
  end
end

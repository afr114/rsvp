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
    @user = current_user
    @event = Event.find(params[:event_id].to_i)
    @name = location_params[:name]
    @address = params[:search].split(",")
    @street = @address[0]
    @city = @address[1]
    @state = @address[2]
    @location = Location.create(:name => @name, :street => @street, :city => @city, :state => @state, :event_id => params[:event_id].to_i)

    binding.pry
    redirect_to user_event_path(@user, @event)
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
    params.require(:location).permit(:name, :search, :name, :street, :state, :city)
  end
end

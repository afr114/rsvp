class LocationsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @events = current_user.events.all
  end

  def new
    @event = Event.find(params[:event_id])
    @location = Location.new
  end

  def create

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

  def event_params
    params.require(:location).permit(:title, :description)
  end
end

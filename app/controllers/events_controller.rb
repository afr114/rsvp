class EventsController < ApplicationController
  def index
    @events = current_user.events.all
  end

  def new
    @event = Event.new
  end

  def create
    @event.new(event_params)
    if @event.save
      flash[:notice] = "Event successfully created"
      redirect_to @event
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
    @locations = @event.locations
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

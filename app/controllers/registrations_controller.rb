class RegistrationsController < Devise::RegistrationsController

  def create
    super do |resource|
      if resource.save
        if params[:event_id] !=""
          binding.pry
          @event_id = params[:event_id]
          @event = Event.find(@event_id.to_i)
          @guest = Guest.new
          @guest.event = @event
          @guest.user = resource
          @guest.save
        end
      end
    end
  end

  protected
  def after_sign_up_path_for(resource)
    'resource/:id' # Or :prefix_to_your_route
  end
end

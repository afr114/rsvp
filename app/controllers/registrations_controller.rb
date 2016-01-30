class RegistrationsController < Devise::RegistrationsController

  def create
    super do |resource|
        if resource.save
          binding.pry
          @event_id = params[:event_id]
          binding.pry
          @event = Event.find(@event_id.to_i)
          @guest = Guest.new
          @guest.event = @event
          @event.user = current_user
          @guest.save
      end
    end
  end

  protected
  def after_sign_up_path_for(resource)
    'user/:id' # Or :prefix_to_your_route
  end
end

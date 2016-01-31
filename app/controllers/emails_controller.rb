class EmailsController < ApplicationController
  def send_mail
    @name = params[:name]
    @email = params[:email]
    @event_id = params[:event_id]
    @event = Event.find(params[:event_id])
    InviteMailer.invite_guest(@name, @email, @event_id).deliver
    flash[:notice] = "Event invitation sent!"
    redirect_to user_event_path(current_user, @event)
  end


end

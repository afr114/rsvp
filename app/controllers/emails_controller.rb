class EmailsController < ApplicationController
  def send_mail
    @name = params[:name]
    @email = params[:email]
    @event_id = params[:event_id]
    InviteMailer.invite_guest(@name, @email, @event_id).deliver
    redirect_to root_path
  end


end

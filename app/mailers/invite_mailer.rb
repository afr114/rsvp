class InviteMailer < ApplicationMailer
  def invite_guest(name, email, event_id)
    email = email
    @name = name
    event_id = event_id.to_i
    @event = Event.find(event_id)
    mail to: email, subject: "Test"

  end

end

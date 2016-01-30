class InviteMailer < ApplicationMailer
  def invite_guest(email)
    email = email


    mail to: email subject: "Test"
  end

end

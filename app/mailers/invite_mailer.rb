class InviteMailer < ApplicationMailer
  def invite_guest(name, email)
    email = email
    @name = name
    
    mail to: email, subject: "Test"

  end

end

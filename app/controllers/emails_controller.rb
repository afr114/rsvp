class EmailsController < ApplicationController
  def send_mail
    @name = params[:name]
    @email = params[:email]
    binding.pry
    InviteMailer.invite_guest(@name, @email).deliver
    redirect_to root_path
  end
  

end

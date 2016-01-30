class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = current_user
    @events = @user.events.all
    @attending =[]
    @user.guests.each do |guest|
      event = guest.event
      @attending.push(event)
    end
  end
end

class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = current_user
    @events = @user.events.all
    @attending = @user.attending
  end
end

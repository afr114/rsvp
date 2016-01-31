class HomeController < ApplicationController
  before_filter :disable_container, only: [:index]

  def index
    if user_signed_in?
      redirect_to current_user
    else
      render :layout => 'home'
    end
  end

  def about
    render :layout => 'application'
  end
end

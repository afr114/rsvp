class HomeController < ApplicationController
  before_filter :disable_container, only: [:index]

  def index
    render :layout => 'home'
  end

  def about
    render :layout => 'application'
  end
end

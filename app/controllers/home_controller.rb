class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def kontakkami

  end
end

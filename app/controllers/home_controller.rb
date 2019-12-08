class HomeController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index
    if logged_in?
      @movies = Movie.where(sharers_id: current_user.id).last(10)
    else
      @movies = Movie.last(10)
    end
  end
end

class HomeController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index
    @movies = Movie.last(10)
  end
end

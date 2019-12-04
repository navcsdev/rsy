class HomeController < ApplicationController
  def index
    @movies = Movie.last(10)
  end
end

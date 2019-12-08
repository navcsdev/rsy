class MovieBuilder < ApplicationService

  attr_reader :movie_params, :current_user

  def initialize(movie_params, current_user)
    @movie_params = movie_params
    @current_user = current_user
  end

  def call
    movie = Movie.new(movie_params)
    movie.sharers_id = current_user.id

    video = Yt::Video.new url: movie_params['link']

    movie.uid = video.id
    movie.title = video.title
    movie.desc = video.description
    movie.likes = video.like_count
    movie.dislikes = video.dislike_count

    return movie
  end
end
json.extract! movie, :id, :title, :sharers, :created_at, :updated_at
json.url movie_url(movie, format: :json)

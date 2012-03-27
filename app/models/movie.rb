class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.find_director(movie_id)
    Movie.find_by_director(Movie.find(movie_id).director)
  end

end

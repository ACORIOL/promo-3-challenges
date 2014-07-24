# Encodgit ing: utf-8
require 'csv'
require_relative "movie.rb"


def most_successful(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year
  csv_options = { col_sep: ',', encoding: "utf-8" }

  movies = []

  CSV.foreach(file_name, csv_options) do |row|
    movie = Movie.new(row[0], row[1].to_i, row[2].to_i)
    movies << movie
  end

  movies_before = get_movies_before(movies, max_year)
  sorted_movies = sorted_movies(movies_before)

  sorted_movies.take(number).each { |movie|
    puts movie.name
  }
end

def get_movies_before(movies, max_year)
  movies.select do |movie|
    movie.year < max_year
  end
end

def sorted_movies(movies)
  movies.sort_by do |movie|
    -movie.earnings
  end
end

most_successful(50, 1990, 'lib/movies.csv')
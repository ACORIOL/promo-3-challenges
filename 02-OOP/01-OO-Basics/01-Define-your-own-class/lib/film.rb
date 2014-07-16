class Film
  attr_reader :title, :director, :year, :entries

  def initialize(title, director, year, entries)
    @title = title
    @director = director
    @year = year
    @entries = 0
  end

  def spectactor_watched_movie
    @entries += 1
  end

end


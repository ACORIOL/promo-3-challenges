class Movie

attr_accessor :earnings, :name, :year

  def initialize(name, year, earnings)
    @name = name
    @year = year
    @earnings = earnings
  end

end
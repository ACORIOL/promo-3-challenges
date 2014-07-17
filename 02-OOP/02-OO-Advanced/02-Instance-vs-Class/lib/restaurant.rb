class Restaurant

  #TODO add relevant accessors if necessary
  attr_reader :city, :name, :type, :average_rating

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @type = type
    @all_ratings = []
    @average_rating = 0
  end

  def rate(user_rate)
    sum = 0
    @all_ratings << user_rate.to_f
    @all_ratings.each do |rate|
      sum += rate
    end
    @average_rating = sum / @all_ratings.length
  end
  #autre methode:
  #def rate(user_rate)
  #@all_ratings << user_rate.to_f
  #@average_rating = @all_ratings.inject(:+) / @all_ratings.size
  #end


  #TODO: implement #filter_by_city and #rate methods

end

class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :height, :fruits, :age

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def dead?
    @dead
    if @age >= 100
      return @dead = true
    end
  end

  def one_year_passes!
    @age += 1

    if (0..10).cover?(@age)
       return @height += 1
    end

    #probabilité
    #if (50..100).cover?(@age)
    #     return #????
    # end


    if
      (5..10).cover?(@age)
      @fruits = 100
    elsif
      (10..15).cover?(@age)
      @fruits = 200
    else
      @fruits = 0
    end

   end


  def pick_a_fruit!
    return @fruits -= 1
  end
end
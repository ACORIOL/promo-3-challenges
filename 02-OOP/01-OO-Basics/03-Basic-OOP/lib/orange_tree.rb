class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_accessor :height, :fruits, :age

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
  end

  def dead?
    if @age >= 100
      return true
    elsif @age < (50..100).to_a.sample
      return false
    else
       true
    end
  end

  def one_year_passes!
    @age += 1

    if (0..10).cover?(@age)
      @height += 1
    end

    if @age > 5 && @age <= 10
      @fruits = 100
    elsif
      @age > 10 && @age <= 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def pick_a_fruit!
    @fruits -= 1
  end

end
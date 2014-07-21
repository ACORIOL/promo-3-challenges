require_relative "cookbook"
require_relative "controller"
require "csv"

class Ui

#faut initialize ?

  def display_recipes(recipes)
    recipes.each_with_index do |recipe, index|
        puts "#{index} - #{recipe.name}"
    end
  end

  def ask_for_new_recipe
    puts "name of the recipe?"
    name = gets.chomp
    puts "description of the recipe?"
    description = gets.chomp
    puts "Thanks for adding #{name}!"
  end

  def ask_to_remove_a_recipe(name)
    puts "which recipe do you want to remove?"
    recipe_to_delete = gets.chomp.to_i #what if is not in the list?
  end

end


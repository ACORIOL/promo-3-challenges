require "csv"
require_relative "recipe"
require_relative "ui"
require_relative "controller"

class Cookbook

  attr_reader :recipes

  def initiatilize(csv)
    @recipes = []
    @filepath = csv_file #pourquoi?
    load_csv(@filepath)#loadcsv  ??
  end

  def load_recipes(@filepath)
    #pourquoi ne faut-il pas mettre les csv_ptions?
     CSV.foreach(@filepath) do |row| #read and parse
      @recipes << @filepath #???
    end
  end

  def add_recipe(recipe)
    recipe = Recipe.new(name, description) #(row[0], row[1])
    @recipes << recipe
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
  end

  def save_recipes
    CSV.open(@filepath, "w") do |csv| # "w"??
      csv << [name, description]
    end
  end

end

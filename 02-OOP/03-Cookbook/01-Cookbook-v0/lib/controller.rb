require_relative "recipe"
require_relative "cookbook"
require_relative "ui"

class Controller
  def initialize(cookbook)
    @ui = Ui.new
    @cookbook = cookbook
  end

  def display_recipes
    recipes = @cookbook
    @ui.display_recipes(@cookbook.recipes)
  end

  def add_new_recipe #arguments (name & description?)
    description = @ui.ask_for_new_recipe
    new_recipe = Recipe.new(name, description)
    @cookbook.add.recipe(new_recipe)
  end

  def remove_recipe
#check methode de sebastien
    index = @ui.ask_to_remove_a_recipe(name)
    recipe = @cookbook_repository.find.recipe(index)
    recipe.remove_recipe
  end

end

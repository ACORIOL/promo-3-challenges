require_relative "recipe"
require_relative "cookbook"
require_relative "ui"
require_rrelative "controller"

controller = Controller.new

while true
  controller.display_recipes #?????
  puts "___________________________"
  puts "type 1 to add a recipe"
  puts "type 2 to remove a recipe"
  action = gets.chomp.to_i #possible ??
  if action == 1
    controller.add_new_recipe
  elsif action == 2
    controller.remove_recipe
  else
    puts "press 1 or 2"
  end
end

require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

your_message = gets.chomp
puts your_message
  correct_answer = "I am going to work right now SIR !"
while your_message != correct_answer
  puts coach_answer(your_message)
your_message = gets.chomp
puts your_message
end







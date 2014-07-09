require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
  bank = bank_score
  player = 0

  while asking_for_card?(player)
    return player += pick_card
    puts state_of_the_game(player, bank)
  end
  outcome = game_outcome(bank, score)
  puts build_message_for(outcome)

end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  return "Your score is #{score}, bank is #{bank}!"
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
puts "Do you want a card (Yes or Y for a new card)?"
    player_answer = gets.chomp
    if player_answer == "yes" or player_answer == "Y"
      return true
    else
      return false
    end
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if outcome[1] > 21
    return "You are over 21... you loose."
  elsif outcome[1] == 21
    return "Black Jack!"
  elsif outcome[1] > outcome[0]
    return "You beat the bank! You win."
  elsif outcome[1] < outcome[0]
    return "Bank beats you! You loose."
  else "bim!"
  end
end

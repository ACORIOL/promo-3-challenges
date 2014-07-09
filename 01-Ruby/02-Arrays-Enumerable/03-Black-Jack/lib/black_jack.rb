def bank_score
  return rand(16..21)
  # TODO: Use Random to get a new random score
end

def pick_card
  # TODO: Use Random to get a new random card
  return rand(1..11)
end

def game_outcome(bank, score)
  # TODO: Take the bank and the score and output an array containing the bank and then the score
  bank = bank_score
  score = pick_card

  outcome = ["bank", "score"]

end


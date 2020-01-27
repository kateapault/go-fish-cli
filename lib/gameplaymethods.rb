require 'tty-prompt'

def start_game(player_name)
    prompt = TTY::Prompt.new

    deck = Deck.new
    player_hand = Hand.new(player_name)
    computer_hand = Hand.new("Computer")
end

def round(asker,responder)

end

def computer_guess

end

def human_guess

end
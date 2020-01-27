require 'tty-prompt'

def start_game(player_name)
    prompt = TTY::Prompt.new

    deck = Deck.new
    player_hand = Hand.new(player_name)
    computer_hand = Hand.new("Computer")

    deck.deal(5,player_hand,computer_hand)
    [player_hand, computer_hand, deck]
end

def round(asker_hand,responder_hand)
    asker = asker_hand.owner
    responder = responder_hand.owner
    if asker == "Computer"
        computer_guess(asker_hand,responder_hand)
    else
        # show cards
        # ask which card to guess (select)
        # check if computer has cards in hand
        # if not, computer draws card
        # if so, check if rank in computer's hand
        # if so, match! & ask again
        # if not, turn over. draw card from pile.
    end

    # -- how to do? at any point if deck is empty, then round & game over
end

def computer_guess(computer_hand,player_hand)
    computer_ranks = computer_hand.list_ranks
    puts "COmputer's hand: #{computer_hand.display}"
    player_ranks = player_hand.list_ranks
    puts "PLayer's hand: #{player_hand.display}"
    
    repeat_guess = true
    while repeat_guess && player_hand.list_ranks.size > 0
        computer_guess = computer_ranks[rand(0..computer_ranks.size-1)]
        puts "Computer: Have any #{computer_guess}s?"
        
        if player_ranks.include? computer_guess
            sleep(0.25)
            puts "#{player_hand.owner}: Yes."
            ind = player_ranks.find_index(computer_guess)
            card = player_hand[ind]
            card.location = "Computer"
            card.save
        else
            sleep(0.25)
            puts "Go fish!"
            repeat_guess = false
        end
    end
    puts "Computer's hand: #{computer_hand.display}"
    puts "Player's hand: #{player_hand.display}"
end

def human_guess(player_hand,computer_hand)
    prompt = TTY::Prompt.new

    card = prompt.select("Choose a card to ask for: ") do |menu|
        player_hand.cards.each do |card|
            menu.choice "[#{card.rank} #{card.suit}]"
        end
    end

    puts card
end
# def round(asker,responder)

# end


# def human_guess

# end
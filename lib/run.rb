# require 'pry'
# require '~/desktop/cribbage/cards'
# require_relative 'deck'
# require_relative 'hands'
# require_relative 'pairs'


# def start_game
#     # puts "Enter your name:"
#     # player1 = gets.strip
#     player1 = "Player 1"
#     player2 = "Computer"

#     deck = Deck.new
#     hand1 = Hand.new(player1)
#     hand2 = Hand.new(player2)

#     pairs_pile1 = Pairs.new(player1)
#     pairs_pile2 = Pairs.new(player2)
    
#     deck.deal_unique(6,hand1)
#     deck.deal_unique(6,hand2)

#     [deck,hand1,hand2]
# end

# def player_guess(hand)
#     #inputs hand, outputs card guess [card name]
#     hand.display
#     puts "Enter your guess: (eg 'two', 'king', etc)"
#     valid_guess = false
#     until valid_guess
#         guess = gets.strip
#         if hand.choices.include? guess
#             valid_guess = true
#         else
#             "Oops, you don't have that card in your hand. Please enter a different guess: "
#         end
#     end
#     guess
# end

# def computer_guess(hand)
#     hand.choices.sample
# end

# def pairs_pile_from_hand(hand)
#     # takes in hand, returns pair pile for same player
#     Pairs.all.find { |pairs| pairs.owner == hand.owner }
# end

# def check_for_pairs(hand,card_name,pairs_pile=nil)
#     # takes in hand and string card name

#     if hand.choices.include? card_name
#         paired_card = hand.cards.find { |card| card.name == card.name }
#         sleep 1
#         puts "Match!"
#         match_found = true
#     else
#         sleep 1
#         puts "No match"
#         match_found = false
#     end

#     if pairs_pile && match_found
#         paired_card.location = pairs_pile
#     end
#     match_found
# end

# def draw_card(deck,hand)
#     drawn_card = deck.cards.sample
#     sleep 1
#     puts "#{hand.owner} drew the #{drawn_card.fullname}!"
#     pairs_pile = pairs_pile_from_hand(hand)
#     if check_for_pairs(hand,drawn_card.name,pairs_pile)
#         puts "it's a matching card"
#         puts "hand is now: #{hand.choices}"
#     else
#         puts "it is not a matching card"
#         drawn_card.location = hand
#         puts "hand is now: #{hand.choices}"
#     end
# end

# ########################################
# ######   WIP METHODS ARE BELOW  ########
# ########################################



# #### ask other for card  #######
# def round(deck,ask_hand,give_hand)
#     turn_over = false

#     asker = ask_hand.owner
#     giver = give_hand.owner
#     askers_pairs_pile = pairs_pile_from_hand(ask_hand)

#     #### getting guess from player / computer ####
#     until turn_over
#         if asker == 'Computer'
#             guess = computer_guess(ask_hand)
#         else
#             guess = player_guess(ask_hand)
#         end
#         sleep 1
#         puts "#{asker}: Got any #{guess}s?"
#         sleep 1
#         puts "(#{giver}'s hand: #{give_hand.choices}')"

#         match_found = check_for_pairs(give_hand,guess,askers_pairs_pile)
#         if match_found
#             matching_card = ask_hand.cards.find { |card| card.name == guess }
#             matching_card.location = askers_pairs_pile
#         else
#             turn_over = true
#             sleep 1
#             puts "Go fish!"
#             draw_card(deck,ask_hand)
#         end
#     end
#     sleep 1
#     puts "Round over!"
# #    binding.pry
# end





# ##################
# ##################
# ##################


# #### GAMEPLAY #######

# ##notes: how to make sure deck isn't empty?
# ## switch off rounds by doing round count, and %2 to get player order [[p1,p2],[p2,p1]]?
# ## wrap everything in a game thing? restart game option?
# ## maybe eventually player class to keep track of wins/losses/scores?
# ## maybe eventually set up so 2 people can play?

# deck, hand1, hand2 = start_game  
# round(deck,hand1,hand2)

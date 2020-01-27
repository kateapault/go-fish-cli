require_relative './config/environment'

puts "yay :)"

h1, h2, d  = start_game("Player")
# puts h1.display
# puts h2.display

human_guess(h1,h2)
# binding.pry
# start menu - login/signup/about
    # eventually do reset password if wrong?

# user menu - see stats, play, edit settings, quit

# settings menu - difficulty, card big/small, color? back

# game
    # deal to players (unique deal)
    # who goes first?
    # first person asks - while match, continue asking
    # else draw
    # switch off until deck is empty
    # count pairs - most pairs wins
    # play again? if no, user menu

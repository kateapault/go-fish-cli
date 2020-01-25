# class Hand
#     attr_reader :owner
#     def initialize(owner)
#         #starts with owner assigned
#         @owner = owner
#     end

#     def cards
#         Card.fulldeck.select { |card| card.location == self }
#     end

#     def display
#         self.cards.each do |card|
#             print "[#{card.fullname}]"
#         end
#         puts ''
#     end

#     # for purposes of making pairs
#     def choices
#         self.cards.map { |card| card.name }
#     end

#     # def draw_card(num=1)
#     #     num.times do
#     #         drawn_card = Card.find { |card| card.location == 'deck' }
#     #         drawn_card.move_to == self
#     #     end
#     # end

# end
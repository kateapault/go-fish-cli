# class Pairs
#     attr_reader :owner
#     @@all = []

#     def initialize(owner)
#         @owner = owner
#         @@all << self
#     end

#     def cards
#         Card.fulldeck.select { |card| card.location == self }
#     end

#     def count
#         self.cards.size/2
#     end

#     def self.all
#         @@all
#     end

# end
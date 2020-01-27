class Hand
    attr_reader :owner
    def initialize(owner)
        @owner = owner
    end

    def cards
        Card.all.select { |card| card.location == @owner }
    end

    def display
        puts "#{self.owner}'s Hand: "
        self.cards.each do |card|
            print "[#{card.rank} #{card.suit}] "
        end
    end

    def ask_options
        self.cards.map { |card| card.rank }
    end
    
end

#     # def draw_card(num=1)
#     #     num.times do
#     #         drawn_card = Card.find { |card| card.location == 'deck' }
#     #         drawn_card.move_to == self
#     #     end
#     # end

# end
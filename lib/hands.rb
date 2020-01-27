class Hand
    attr_reader :owner
    def initialize(owner)
        @owner = owner
    end

    def cards
        Card.all.select { |card| card.location == @owner }
    end

    def display
        self.cards.each do |card|
            print "[#{card.rank} #{card.suit}] "
        end
        return nil
    end

    def list_ranks
        self.cards.map { |card| card.rank }
    end

    def draw_card(num=1)
        num.times do
            drawn_card = Card.find { |card| card.location == 'deck' }
            drawn_card.location = self.owner
            drawn_card.save
        end
    end
    
end
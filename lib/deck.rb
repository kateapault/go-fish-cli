class Deck

    def initialize
        Card.all.each do |card| 
            card.location = "deck" 
            card.save
        end
    end

    def cards
        Card.all.select { |card| card.location == "deck" }
    end

    def left?
        self.cards.size
    end

    def empty?
        self.left? == 0
    end

    def reshuffle
        Card.all.each do |card| 
            card.location = "deck"
            card.save 
        end
        self.cards.shuffle!
    end

    def deal(num,hand1,hand2)
        cards = self.cards.shuffle
        cards[0..num-1].each do |card| 
            card.location = hand1.owner 
            card.save
        end
        cards[num..num*2-1].each do |card| 
            card.location = hand2.owner 
            card.save
        end
    end

    # def deal_unique(num,hand)
    #     deck_cards = self.cards
    #     in_hand = []
    #     n = 0
    #     while in_hand.size < num && n < 52
    #         card = deck_cards[n]
    #         if in_hand.include? card.rank === false
    #             card.location = hand.owner
    #             card.save
    #             in_hand << card.rank
    #         end
    #         n += 1
    #     end
    # end
end

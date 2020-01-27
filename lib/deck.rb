class Deck

    def initialize
        Card.all.each { |card| card.location = "deck" }
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
        Card.all.each { |card| card.location = "deck" }
        self.cards.shuffle!
    end

    def deal(num,hand1,hand2)
        cards = self.cards.shuffle
        cards[0..num-1].each { |card| card.location = hand1 }
        cards[num..num*2-1].each { |card| card.location = hand2 }
    end

    def deal_unique(num,hand)
        card_pile = self.cards.shuffle
        i = 0
        in_hand = hand.choices
        # puts "in_hand before loop: #{in_hand}"
        while in_hand.size < num
            # puts "card_pile[#{i}]: #{card_pile[i]}"
            unless in_hand.include? card_pile[i].name
                card_pile[i].location = hand
            end
            i += 1
            in_hand = hand.choices
        end
        hand
    end


end

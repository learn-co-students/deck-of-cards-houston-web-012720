class Deck

    attr_reader :cards

    def initialize
        @cards = []
        while @cards.count < 52
            @cards << Card.new(["Hearts", "Clubs", "Diamonds", "Spades"].sample,["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].sample)
        end
    end

    def choose_card
        cards.delete(@cards.sample)
    end

end

class Card

    attr_reader :rank, :suit

    def initialize (suit, rank)
        @rank = rank
        @suit = suit
    end

end

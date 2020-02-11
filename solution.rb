class Deck

    attr_accessor :cards

    def initialize
        @cards = []
        for suit in ["Hearts", "Diamonds", "Clubs", "Spades"] do
            for rank in ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] do
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        @cards.delete_at(rand(@cards.length))
    end
end

class Card

    attr_accessor :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end
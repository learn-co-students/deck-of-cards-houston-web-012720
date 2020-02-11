class Deck
    attr_accessor :cards

    @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize
        @cards = []

        for suit in @@suits do
            for rank in @@ranks do
                @cards << Card.new(suit, rank)
            end
        end

    end

    def choose_card
        @cards.delete_at((1..@cards.length).to_a.sample)
    end

end

class Card
    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
end

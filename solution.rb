class Deck
    attr_accessor :cards

    @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize
        @cards = []
        @@ranks.each do |rank|
            @@suits.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
        @cards
    end

    def choose_card
        random_card = @cards.sample
        @cards.delete(random_card)
    end
end

class Card
    attr_accessor :suit, :rank
    def initialize (s, r)
        @suit = s
        @rank = r
    end
end

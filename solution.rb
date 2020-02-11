require 'pry'

class Card

    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end


end

class Deck

    attr_accessor :cards
    def initialize
        @ranks = ['A', *(2..10), 'J', 'Q', 'K',]
        @suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @cards = []

        @ranks.each do |rank|
            @suits.each do |suit|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        remove_index = rand(@cards.length)

        @cards.delete_at(remove_index)
    end

end






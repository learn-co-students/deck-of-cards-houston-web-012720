require 'pry'

class Deck

    attr_accessor :cards
    
    def initialize
        @cards = []
        rank_list = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
        suit_list = %w(Hearts Clubs Diamonds Spades)

        suit_list.each do |suit|
            rank_list.each do |rank|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        # card_index = rand(0..51)
        card_index = rand(@cards.length)
        @cards.delete_at(card_index)
    end

end

class Card
    
    attr_accessor :suit, :rank
    
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

end

binding.pry
0
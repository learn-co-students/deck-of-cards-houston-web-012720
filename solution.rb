class Deck
    attr_accessor :cards

    def initialize
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        # @cards = []
        # ranks.each do |rank|
        #     suits.each do |suit|
        #         @cards << Card.new(suit, rank)
        #     end
        # end
        args = ranks.product(suits)
        @cards = []
        args.each do |arg|
            @cards << Card.new(arg[1], arg[0])
        end
    end

    def choose_card
        @cards.delete(@cards.sample)
    end
end

class Card
    attr_accessor :suit, :rank
    def initialize (s, r)
        @suit = s
        @rank = r
    end
end

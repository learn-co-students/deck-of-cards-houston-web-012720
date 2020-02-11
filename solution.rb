class Deck

  attr_accessor :cards

  def initialize()
    @cards = []
    @ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @suits = ["Hearts", "Spades", "Clubs", 'Diamonds']
    @suits.each do |suit|
      @ranks.each do |rank|
        @cards << Card.new(suit, rank)
      end  
    end  
  end  

  def choose_card
    a = rand(51)-1
    @cards.delete_at(a)
  end  

end

class Card

  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end  
    

end


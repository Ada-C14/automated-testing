
# deck.rb

require_relative 'card'

class Deck

  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
        end
      end

  end

  def draw
    # returns a card
    # .pop removes the last element from self and returns it, or nil if the array is empty.
    drawn_card = @cards.pop
    return drawn_card
  end

  def shuffle
    # shuffles the deck
    @cards.shuffle
  end
end

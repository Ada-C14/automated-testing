# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    valid_values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    valid_suits = [:spades, :diamonds, :hearts, :clubs]

    if (valid_values.include?(@value) == false) || (valid_suits.include?(@suit) == false)
      raise ArgumentError.new
    end
  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
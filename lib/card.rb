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
    if @value == 1
      string_value = "Ace"
    elsif @value == 11
      string_value = "Jack"
    elsif @value == 12
      string_value = "Queen"
    elsif @value == 13
      string_value = "King"
    else
      string_value = @value
    end
    return "#{string_value} of #{suit.to_s}"
  end

end
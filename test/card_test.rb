require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      card = Card.new(2, :diamonds)
      expect(card.to_s).must_equal "2 of diamonds"

    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # The current implementation of to_s does not address this feature
      # Write the test, see it fail, then modify to_s to make it pass!
      # (Consider writing a helper method!)
      #
      # For reference:
      #  1: Ace
      #  11: Jack
      #  12: Queen
      #  13: King
      card1 = Card.new(1, :diamonds)
      expect(card1.to_s).must_equal "Ace of diamonds"

      card2 = Card.new(11, :spades)
      expect(card2.to_s).must_equal "Jack of spades"

      card3 = Card.new(12, :hearts)
      expect(card3.to_s).must_equal "Queen of hearts"

      card4 = Card.new(13, :clubs)
      expect(card4.to_s).must_equal "King of clubs"
    end

  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`

      # my code - which works
      # val = rand(1..13)
      # card5 = Card.new(val, :clubs)
      # expect (card5.value).must_equal val

      # Chris' code - also works, checks more at the same time
      [:spades, :diamonds, :clubs, :hearts].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card.value).must_equal value
        end
      end
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      # ensure that `.value works as expected`

      # my code - which works
      # suits = [:spades, :diamonds, :clubs, :hearts]
      # suits_shuffled = suits.shuffle
      # this_suit = suits_shuffled[0]
      # val = rand(1..13)
      # card = Card.new(val, suits_shuffled[0])
      # expect (card.suit).must_equal this_suit

      # Chris' code - also works, checks more at the same time
      [:spades, :diamonds, :clubs, :hearts].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card.suit).must_equal suit
        end
      end
    end
  end

end

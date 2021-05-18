class Deck
  attr_reader :cards

  def initialize
    @cards = Card.all.to_a
  end

  def shuffle
    require "pry"; binding.pry
    cards.shuffle!
  end
end

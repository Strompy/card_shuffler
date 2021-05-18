class Deck
  attr_reader :cards

  def initialize
    @cards = Card.all
  end
end

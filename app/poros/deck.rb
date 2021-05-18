class Deck
  attr_reader :cards

  def initialize
    @cards = Card.all.to_a
  end

  def shuffle
    i = cards.size
    while i > 0
      j = rand(i-1)
      i -= 1
      cards[i], cards[j] = cards[j], cards[i]
    end
  end
end

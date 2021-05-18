require 'rails_helper'

RSpec.describe Deck, type: :poro do
  before(:each) do
    Rails.application.load_seed
  end

  it 'can be created with 52 cards' do
    deck = Deck.new
    expect(deck).to be_instance_of(Deck)
    expect(deck.cards.size).to eq(52)
    expect(deck.cards.uniq).to eq(deck.cards)
  end

  describe 'instance methods' do
    it 'can shuffle the deck' do
      deck = Deck.new
      expect(deck.cards.size).to eq(52)
      og_cards = deck.cards.clone
      deck.shuffle
      expect(deck.cards).to_not eq(og_cards)
      expect(deck.cards.size).to eq(52)
    end
  end
end

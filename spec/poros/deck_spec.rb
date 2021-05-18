require 'rails_helper'

RSpec.describe Deck, type: :poro do
  before(:each) do
    Rails.application.load_seed
  end

  it 'can be created with 52 cards' do
    # Rails.application.load_seed
    deck = Deck.new
    expect(deck).to be_instance_of(Deck)
    expect(deck.cards.size).to eq 52
    expect(deck.cards.uniq).to eq deck.cards
  end
end

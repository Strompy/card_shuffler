require 'rails_helper'

RSpec.describe 'When a user visits the home page' do
  it 'it displays a new ushuffled deck' do
    visit root_path
    expect(page).to have_content('Card Shuffler')
    expect(page).to have_css('.card', count: 52)
    find('.card', match: :first) do
      expect(page).to have_content('2')
      expect(page).to have_content('hearts')
    end
    all('.card').last do
      expect(page).to have_content('A')
      expect(page).to have_content('clubs')
    end
  end
  it 'it has a shuffle button that shuffles the cards' do
    visit root_path

    expect(page).to have_button('Shuffle')
    cards = all('.card')

    click_button('Shuffle')
    expect(current_path).to eq(root_path)

    shuffled_cards = all('.cards')
    expect(cards).to_not eq(shuffled_cards)
  end
end

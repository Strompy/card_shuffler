require 'rails_helper'

RSpec.describe 'When a user visits the home page' do
  it 'it displays a new ushuffled deck' do
    visit root_path
    expect(page).to have_content('Card Shuffler')

    expect(page).to have_css('.card', count: 52)
    # expect(page).to have_css('.header')
    expect(page).to have_css('.card.hearts', count: 13)
    expect(page).to have_css('.card.clubs', count: 13)
    expect(page).to have_css('.card.spades', count: 13)
    expect(page).to have_css('.card.diamonds', count: 13)

    find('.card', match: :first) do
      expect(page).to have_content('2')
      expect(page).to have_css("img[alt=hearts]")
    end

    all('.card').last do
      expect(page).to have_content('A')
      expect(page).to have_css("img[alt=clubs]")

    end
  end
  it 'it has a shuffle button that shuffles the cards' do
    visit root_path

    expect(page).to have_button('Shuffle')
    cards = all('.card')

    click_button('Shuffle')
    expect(current_path).to eq(root_path)

    expect(page).to have_css('.card', count: 52)
    expect(page).to have_css('.card.hearts', count: 13)
    expect(page).to have_css('.card.clubs', count: 13)
    expect(page).to have_css('.card.spades', count: 13)
    expect(page).to have_css('.card.diamonds', count: 13)

    shuffled_cards = all('.card')
    expect(cards).to_not eq(shuffled_cards)
    expect(cards.first).to_not eq(shuffled_cards.first)
    expect(cards.last).to_not eq(shuffled_cards.last)
  end
end

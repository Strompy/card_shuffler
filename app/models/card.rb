class Card < ApplicationRecord
  validates :rank, presence: true
  validates :suit, presence: true
  validates :value, presence: true
end

require 'rails_helper'

RSpec.describe Card, type: :model do
  describe 'Validations' do
    it {should validate_presence_of :rank}
    it {should validate_presence_of :suit}
    it {should validate_presence_of :value}
  end
end

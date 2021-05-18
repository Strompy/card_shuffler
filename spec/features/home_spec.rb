require 'rails_helper'

RSpec.describe 'When a user visits the home page' do
  describe 'it displays a new ushuffled deck' do
    visit '/'
  end
end

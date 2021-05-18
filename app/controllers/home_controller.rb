class HomeController < ApplicationController
  def index
    @deck = Deck.new
  end
end

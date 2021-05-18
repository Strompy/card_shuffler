class HomeController < ApplicationController
  def index
    @deck = Deck.new
    if params[:shuffle]
      require "pry"; binding.pry
      @deck.shuffle
    end
  end

end

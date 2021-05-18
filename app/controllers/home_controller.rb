class HomeController < ApplicationController
  def index
    @deck = Deck.new
    if params[:shuffle]
      @deck.shuffle
    end
  end

end

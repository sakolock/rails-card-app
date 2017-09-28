class CardsController < ApplicationController
  before_action :set_card, only: [:show]

  def index
    @cards = Card.all
  end

  def show
  end

  def search
    @results = Card.search_by_title(params[:search_term])
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end
end

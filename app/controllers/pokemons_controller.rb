class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.includes(:region).all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
end

class PokemonsController < ApplicationController
  POKEMON_PER_PAGE = 20

  def index
    @page = params.fetch(:page, 0).to_i
    @pokemons = Pokemon.includes(:region).offset(@page * POKEMON_PER_PAGE).limit(POKEMON_PER_PAGE)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
end

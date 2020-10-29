class PokemonsController < ApplicationController
  POKEMON_PER_PAGE = 20

  def index
    @page = params.fetch(:page, 0).to_i
    @pokemons = Pokemon.includes(:region).offset(@page * POKEMON_PER_PAGE).limit(POKEMON_PER_PAGE)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @abilities = []
    @pokeAbilities = PokemonAbility.where("pokemonName LIKE :name", name: @pokemon.number)
    @pokeAbilities.each do |thing|
      @abilities.push(Ability.where("id = :id", id: thing.abilityName))
    end
  end
end

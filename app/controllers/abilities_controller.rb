class AbilitiesController < ApplicationController
  def index
    @abilities = Ability.all
  end

  def show
    @ability = Ability.find(params[:id])
    @pokemons = []
    @pokeAbilities = PokemonAbility.where("abilityName LIKE :name", name: @ability.id)
    @pokeAbilities.each do |thing|
      @pokemons.push(Pokemon.where("number = :id", id: thing.pokemonName))
    end
  end
end

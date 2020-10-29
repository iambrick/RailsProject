class PokemonAbility < ApplicationRecord
  belongs_to :pokemon, foreign_key: :pokemonName
  belongs_to :ability, foreign_key: :abilityName
end

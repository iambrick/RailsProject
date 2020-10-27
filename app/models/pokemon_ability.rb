class PokemonAbility < ApplicationRecord
  validates :pokemonName, presence: true
  validates :abilityName, presence: true

  belongs_to :pokemon, foreign_key: :pokemonName
  belongs_to :ability, foreign_key: :abilityName
end

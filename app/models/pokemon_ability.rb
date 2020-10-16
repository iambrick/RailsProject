class PokemonAbility < ApplicationRecord
  validates :ability_name, presence: true
  validates :pokemon_id, presence: true

  belongs_to:Pokemon
  belongs_to:Ability
end

class PokemonAbility < ApplicationRecord
  validates :ability_name, presence: true
  validates :pokemon_id, presence: true

  belongs_to:pokemon
  belongs_to:ability
end

class PokemonAbility < ApplicationRecord
  validates :ability_name, presence: true
  validates :pokemon_id, presence: true
end

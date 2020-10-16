class PokemonType < ApplicationRecord
  validates :pokemon_number, presence:true
  validates :type_name, presence:true

  belongs_to:Pokemon
  belongs_to:Type
end

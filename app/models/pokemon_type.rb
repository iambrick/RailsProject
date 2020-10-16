class PokemonType < ApplicationRecord
  validates :pokemon_number, presence:true
  validates :type_name, presence:true

  belongs_to:pokemon
  belongs_to:type
end

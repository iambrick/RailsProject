class PokemonType < ApplicationRecord
  validates :pokemon_number, presence:true
  validates :type_name, presence:true
end

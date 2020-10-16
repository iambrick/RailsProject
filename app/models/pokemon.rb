class Pokemon < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true

  belongs_to:Region
  has_many:PokemonTypes
  has_many:PokemonAbilities
end

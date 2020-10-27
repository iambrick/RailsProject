class Region < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :pokemons, foreign_key: :pokemonName
end

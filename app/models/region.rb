class Region < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many:Pokemons
end

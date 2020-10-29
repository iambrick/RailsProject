class Pokemon < ApplicationRecord
  validates :pokemonName, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true

  has_many :pokemon_abilities
  has_many :abilities, through: :pokemon_abilities
  belongs_to :region
end

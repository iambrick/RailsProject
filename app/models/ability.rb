class Ability < ApplicationRecord
  validates :abilityName, presence: true, uniqueness: true

  has_many :pokemon_abilities
  has_many :pokemons, through: :pokemon_abilities
end

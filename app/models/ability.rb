class Ability < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many:pokemon_abilities
end

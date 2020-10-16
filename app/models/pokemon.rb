class Pokemon < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true

  belongs_to:region
  has_many:pokemon_types
  has_many:pokemon_abilities
end

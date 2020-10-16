class Type < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many:pokemon_types
end

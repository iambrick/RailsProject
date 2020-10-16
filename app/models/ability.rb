class Ability < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many:Pokemon_Ability
end

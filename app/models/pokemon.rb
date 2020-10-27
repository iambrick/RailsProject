class Pokemon < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true

  belongs_to:region
  belongs_to:ability
  belongs_to:type
end

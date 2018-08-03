class Ship < ApplicationRecord
  validates :name, :tonnage, presence: true
  has_many :cruises
end

class Cabin < ApplicationRecord
  validates :beds, :deck, :ship, presence: true
  belongs_to :ship
  has_and_belongs_to_many :reservations
end

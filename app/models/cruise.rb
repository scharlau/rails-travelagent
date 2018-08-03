class Cruise < ApplicationRecord
  belongs_to :ship
  has_many :reservations
  validates :name, presence: true
  validates :ship, presence: true

  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      all
    end
  end
end

class Customer < ApplicationRecord
  validates :last_name, :first_name, :has_good_credit, presence: true
  has_one :address
  has_many :credit_cards
  has_many :reservations
end

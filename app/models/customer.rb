class Customer < ApplicationRecord
    has_one :address
    has_many :credit_cards
    has_many :reservations
end

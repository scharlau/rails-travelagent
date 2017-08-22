class CreditCard < ApplicationRecord
  belongs_to :customer
  enum organisation: {
    "American Express" => "American Express",
    "Visa" => "Visa",
    "MasterCard" => "MasterCard"
  }
end

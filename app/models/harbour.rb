class Harbour < ApplicationRecord
    validates :name, :country, :lat, :long, presence: true
end

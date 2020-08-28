class Airplane < ApplicationRecord
    has_many :flights 
    has_many :passenger, through: :flights
end

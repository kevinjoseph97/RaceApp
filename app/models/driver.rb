class Driver < ApplicationRecord
    has_secure_password
    has_many :laptimes
    has_many :tracks, through: :laptimes 
end

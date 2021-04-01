class Track < ApplicationRecord
    has_many :laptimes
    has_many :drivers, through: :laptimes
end

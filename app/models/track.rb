class Track < ApplicationRecord
    has_many :laptimes
    has_many :drivers, through: :laptimes

    validates :name, presence: true, uniqueness: true


    
end

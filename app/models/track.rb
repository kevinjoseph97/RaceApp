class Track < ApplicationRecord
    has_many :laptimes
    has_many :drivers, through: :laptimes
    accepts_nested_attributes_for :laptimes

    validates :name, presence: true, uniqueness: true


    
end

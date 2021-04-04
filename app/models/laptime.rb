class Laptime < ApplicationRecord
    belongs_to :driver
    belongs_to :track
    validates_presence_of :time
end

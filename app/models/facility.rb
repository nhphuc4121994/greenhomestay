class Facility < ApplicationRecord
    # has_many :home_facilities
    has_many :room_facilities
    has_and_belongs_to_many :homes
end

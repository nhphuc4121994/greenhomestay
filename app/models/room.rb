class Room < ApplicationRecord
  has_many :room_facilities
  belongs_to :room_type
  belongs_to :bed_type
  belongs_to :bath_type
  belongs_to :home
  mount_uploader :image, ImageUploader
  self.per_page = 10
end

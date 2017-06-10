class HomeType < ApplicationRecord
    has_many :homes
    mount_uploader :image, ImageUploader
    self.per_page = 10
end

class Home < ApplicationRecord
    belongs_to :home_type
    belongs_to :m_pref
    # has_many :home_rules
    # has_many :home_facilities
    has_many :rooms
    has_and_belongs_to_many :facilities
    has_and_belongs_to_many :rules
    mount_uploader :image, ImageUploader
    self.per_page = 10
end

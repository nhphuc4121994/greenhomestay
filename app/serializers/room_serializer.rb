class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_type_id, :bed_type_id, :bath_type_id, :home_id, :accommodates, :description, :image, :price, :room_name
  has_many :room_facilities
  belongs_to :room_type
  belongs_to :bed_type
  belongs_to :bath_type
  belongs_to :home
end

class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_type_id, :bed_type_id, :bath_type_id, :accommodates, :description, :image, :price, :room_name
  belongs_to :room_type
    belongs_to :home
    belongs_to :bed_type
    belongs_to :bath_type
    has_many :room_facilities
end

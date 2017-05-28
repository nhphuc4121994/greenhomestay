class RoomTypeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :rooms
end

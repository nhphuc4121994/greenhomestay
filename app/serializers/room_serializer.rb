class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_type_id, :bed_type_id, :bath_type_id, :home_id, :accommodates, :description, :image, :price, :room_name
end

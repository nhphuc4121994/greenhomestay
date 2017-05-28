class RoomFacilitySerializer < ActiveModel::Serializer
  attributes :id, :room_id, :facility_id
   belongs_to :room
    belongs_to :facility
end

class FacilitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :home_facilities
  has_many :room_facilities
end

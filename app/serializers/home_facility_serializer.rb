class HomeFacilitySerializer < ActiveModel::Serializer
  attributes :id, :home_id, :facility_id
  belongs_to :home
  belongs_to :facility
end

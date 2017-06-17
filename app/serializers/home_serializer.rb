class HomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :home_type_id, :home_type_name, :m_pref_id, :m_pref_name, :description, :image, :address, :status, :rooms, :facilities, :rules
end

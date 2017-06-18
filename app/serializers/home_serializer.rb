class HomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :home_type_id, :m_pref_id, :description, :image, :address, :status, :rooms, :facilities, :rules, :home_type, :m_pref
end

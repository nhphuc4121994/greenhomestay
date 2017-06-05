class HomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :home_type_id, :m_pref_id, :description, :image, :address, :status

end

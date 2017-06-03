class MCitySerializer < ActiveModel::Serializer
  attributes :id, :pref_id, :city_name
  link(:self) { m_city_url(object) }
end

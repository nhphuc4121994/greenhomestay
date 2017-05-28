class MCitySerializer < ActiveModel::Serializer
  attributes :id, :pref_id, :city_name
  belongs_to :m_pref
  link(:self) { m_city_url(object) }
end

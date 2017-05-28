class MPrefSerializer < ActiveModel::Serializer
  attributes :id, :pref_name
  has_many :homes
  has_many :m_cities
  link(:self) { m_pref_url(object) }
end

class MPrefSerializer < ActiveModel::Serializer
  attributes :id, :pref_name
  link(:self) { m_pref_url(object) }
end

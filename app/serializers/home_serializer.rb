class HomeSerializer < ActiveModel::Serializer
  attributes :id, :name, :home_type_id, :m_pref_id, :description, :image, :address, :status
  belongs_to :home_type
  belongs_to :m_pref
  has_many :home_rules
  has_many :home_facilities
  has_many :rooms

  link(:self) { home_url(object) }
end

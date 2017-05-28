class HomeTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_many :homes
  link(:self) { home_type_url(object) }
end

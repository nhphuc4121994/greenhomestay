class HomeTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  link(:self) { home_type_url(object) }
end

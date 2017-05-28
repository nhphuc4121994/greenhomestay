class RuleSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :home_rules
end

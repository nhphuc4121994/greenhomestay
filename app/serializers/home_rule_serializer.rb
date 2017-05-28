class HomeRuleSerializer < ActiveModel::Serializer
  attributes :id, :rule_id, :home_id
  belongs_to :rule
  belongs_to :home
end

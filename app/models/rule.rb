class Rule < ApplicationRecord
    # has_many :home_rules
    has_and_belongs_to_many :homes
end


class DropHomeRulesTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :home_rules
  end
end

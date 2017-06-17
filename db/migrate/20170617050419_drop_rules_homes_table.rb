class DropRulesHomesTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :rules_homes
  end
end

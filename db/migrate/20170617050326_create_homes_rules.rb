class CreateHomesRules < ActiveRecord::Migration[5.0]
  def change
    create_table :homes_rules do |t|
      t.integer :rule_id
      t.integer :home_id

      t.timestamps
    end
  end
end

class DropHomeFacilitiesTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :home_facilities
  end
end

class CreateFacilitiesHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :facilities_homes do |t|
      t.integer :home_id
      t.integer :facility_id

      t.timestamps
    end
  end
end

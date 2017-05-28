class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :room_type_id
      t.integer :bed_type_id, null: false
      t.integer :bath_type_id, null: false
      t.integer :accommodates, null: false
      t.text :description, null: false
      t.text :image, null: false
      t.integer :price
      t.string :room_name, null: false

      t.timestamps
    end
  end
end

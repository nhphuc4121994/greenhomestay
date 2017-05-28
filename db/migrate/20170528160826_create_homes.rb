class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :name, null: false
      t.integer :home_type_id, null: false
      t.integer :m_pref_id, null: false
      t.text :description, null: false
      t.text :image, null: false
      t.string :address, null: false
      t.integer :status, null: false

      t.timestamps
    end
  end
end

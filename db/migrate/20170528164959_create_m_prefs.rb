class CreateMPrefs < ActiveRecord::Migration[5.0]
  def change
    create_table :m_prefs do |t|
      t.string :pref_name, null: false

      t.timestamps
    end
  end
end

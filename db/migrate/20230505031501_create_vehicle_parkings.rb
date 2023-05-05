class CreateVehicleParkings < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_parkings do |t|
      t.string :vehicle_registration, null: false
      t.datetime :date_entry, null: false
      t.datetime :date_exit
      t.float :price
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
    add_index :vehicle_parkings, :vehicle_registration, unique: true
  end
end
class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :document, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.string :mobile_phone, null: false

      t.timestamps
    end
    add_index :customers, :document, unique: true
    add_index :customers, :email, unique: true
    add_index :customers, :mobile_phone, unique: true
  end
end

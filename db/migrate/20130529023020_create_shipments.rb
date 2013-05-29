class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :code
      t.integer :branch_number
      t.integer :number
      t.string :name
      t.string :zip
      t.string :address_1
      t.string :address_2
      t.integer :customer_id

      t.timestamps
    end
  end
end

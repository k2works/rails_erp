class AddInventoryDvivisionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :inventory_control_division, :string
    add_column :products, :inventory_reservation_division, :string
  end
end

class AddDivisionToConnection < ActiveRecord::Migration
  def change
    add_column :connections, :supplier_division, :string
    add_column :connections, :customer_division, :string
  end
end

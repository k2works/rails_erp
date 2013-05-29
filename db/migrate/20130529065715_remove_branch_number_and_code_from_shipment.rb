class RemoveBranchNumberAndCodeFromShipment < ActiveRecord::Migration
  def up
    remove_column :shipments, :branch_number
    remove_column :shipments, :code
  end

  def down
    add_column :shipments, :code, :string
    add_column :shipments, :branch_number, :integer
  end
end

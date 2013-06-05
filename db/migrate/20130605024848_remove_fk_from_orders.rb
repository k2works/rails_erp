class RemoveFkFromOrders < ActiveRecord::Migration
  def up
     remove_column :orders, :order_ditails_id   
     remove_column :orders, :order_details_id
  end

  def down
    add_column :orders, :order_ditails_id, :integer
    add_column :orders, :order_details_id, :integer
  end
end

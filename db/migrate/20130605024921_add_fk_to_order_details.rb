class AddFkToOrderDetails < ActiveRecord::Migration
  def change
    add_column :order_details, :order_id, :integer
  end
end

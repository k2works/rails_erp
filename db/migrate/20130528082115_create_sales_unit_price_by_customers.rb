class CreateSalesUnitPriceByCustomers < ActiveRecord::Migration
  def change
    create_table :sales_unit_price_by_customers do |t|
      t.integer :product_id
      t.integer :customer_id
      t.decimal :sales_unit_price

      t.timestamps
    end
  end
end

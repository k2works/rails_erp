class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :order_line_number
      t.integer :product_id
      t.string :product_name
      t.decimal :product_sales_unit_price
      t.decimal :order_amount
      t.decimal :consumption_tax_rate
      t.decimal :reserve_amount
      t.decimal :shipping_instructions_amount
      t.decimal :shipped_amount
      t.integer :finish_flag
      t.decimal :discount
      t.date :due_date

      t.timestamps
    end
  end
end

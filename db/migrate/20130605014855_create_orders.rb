class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.date :order_date
      t.integer :department_id
      t.integer :customer_id
      t.integer :employee_id
      t.date :desired_delivery_time
      t.string :customer_order_number
      t.string :warehouse_code
      t.decimal :contract_amount_sum
      t.decimal :consumption_tax_amount
      t.text :notes
      t.integer :order_details_id

      t.timestamps
    end
  end
end

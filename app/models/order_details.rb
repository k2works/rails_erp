class OrderDetails < ActiveRecord::Base
  attr_accessible :consumption_tax_rate, :discount, :due_date, :finish_flag, :order_amount, :order_line_number, :product_id, :product_name, :product_sales_unit_price, :reserve_amount, :shipped_amount, :shipping_instructions_amount
end

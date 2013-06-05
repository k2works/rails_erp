class OrderDetail < ActiveRecord::Base
  attr_accessible(
    :order_id,
    :order_line_number,
    :product_id,
    :product_name,
    :product_sales_unit_price,
    :order_amount,
    :consumption_tax_rate,    
    :reserve_amount,
    :shipping_instructions_amount,
    :shipped_amount,
    :finish_flag,    
    :discount,
    :due_date
    )
  belongs_to :order
end

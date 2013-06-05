class Order < ActiveRecord::Base
  attr_accessible(
    :order_number,    
    :order_date,
    :department_id,
    :customer_id,
    :employee_id,
    :desired_delivery_time,
    :customer_order_number,
    :warehouse_code,
    :contract_amount_sum,    
    :consumption_tax_amount,
    :notes
    )
  has_many :order_details
end

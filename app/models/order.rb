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
  has_many :order_detail
  accepts_nested_attributes_for :order_detail
  attr_accessible :order_detail_attributes
end

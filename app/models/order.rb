class Order < ActiveRecord::Base
  attr_accessible :consumption_tax_amount, :contract_amount_sum, :customer_id, :customer_order_number, :department_id, :desired_delivery_time, :employee_id, :notes, :order_date, :order_details_id, :order_number, :warehouse_code
end

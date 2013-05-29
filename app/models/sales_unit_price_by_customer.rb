class SalesUnitPriceByCustomer < ActiveRecord::Base
  attr_accessible :customer_id, :product_id, :sales_unit_price
  belongs_to :product
  belongs_to :customer
end

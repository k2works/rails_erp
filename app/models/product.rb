class Product < ActiveRecord::Base
  attr_accessible :code, :model_number, :name_kana, :name_long, :name_short, :product_grouping_id, :purchase_price, :sales_unit_price, :tax_division, :unit_sales_price
  belongs_to :product_grouping
  has_many :sales_unit_price_by_customer
end

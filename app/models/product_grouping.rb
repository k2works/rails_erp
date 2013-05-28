class ProductGrouping < ActiveRecord::Base
  attr_accessible :class_name, :code, :name, :product_grouping_id
  has_many :product_grouping    
  belongs_to :product_grouping
end

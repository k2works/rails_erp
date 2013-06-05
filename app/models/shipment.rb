class Shipment < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :branch_number, :code, :customer_id, :name, :number, :zip  
  belongs_to :customer
end

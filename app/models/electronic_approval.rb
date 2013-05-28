class ElectronicApproval < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :employee
end

class OccupationalCategory < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :employee
end

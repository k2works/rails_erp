class Department < ActiveRecord::Base
  attr_accessible :code, :data_input, :end_date, :name, :organization_hierarchy, :start_date
end

class Department < ActiveRecord::Base
  attr_accessible :code, :data_input, :end_date, :name, :organization_hierarchy, :higt_department_code, :start_date
  has_many :employee
end

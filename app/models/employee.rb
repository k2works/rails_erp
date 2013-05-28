class Employee < ActiveRecord::Base
  attr_accessible :code, :department_id, :electronic_approval_id, :name, :name_kana, :occupational_category_id, :start_date
  belongs_to :department
  belongs_to :occupational_category
  belongs_to :electronic_approval
end

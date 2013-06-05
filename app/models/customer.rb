class Customer < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :billing_branch_number, :billing_code, :branch_number, :closing_day_1, :closing_day_2, :code, :collect_branch_number, :collect_code, :collect_division, :company_person_responsible_code, :connection_id, :department_name, :division, :fax_number, :mail, :name, :name_kana, :payment_day_1, :payment_day_2, :payment_method_1, :payment_method_2, :payment_month_1, :payment_month_2, :person_responsible_name, :phone_number, :prefectures, :zip
  belongs_to :connection
  has_many :shipment
  has_many :sales_unit_price_by_customer
end

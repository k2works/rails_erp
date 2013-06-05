class Supplier < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :branch_number, :closing_day, :code, :connection_id, :department_name, :fax_number, :mail, :name, :name_kana, :payment_day, :payment_division, :payment_month, :person_responsible_name, :phone_number, :prefectures, :zip
  belongs_to :connection  
end

class Connection < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :ban_division, :code, :connection_group_id, :credit_limit, :credit_limit_increas_frame, :supplier_division, :customer_division, :miscellaneous_division, :name, :name_kana, :prefectures, :zip
  belongs_to :connection_group
  has_many :customer
  has_many :supplier
  has_many :connection_category_member
end

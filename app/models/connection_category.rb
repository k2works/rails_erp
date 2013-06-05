class ConnectionCategory < ActiveRecord::Base
  attr_accessible :code, :connection_category_class_id, :name
  belongs_to :connection_category_class
  has_many :connection_category_member
end

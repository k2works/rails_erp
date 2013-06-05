class ConnectionCategoryClass < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :connection_category
end

class ConnectionGroup < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :connection
end

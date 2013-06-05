class ConnectionCategoryMember < ActiveRecord::Base
  attr_accessible :connection_category_id, :connection_id
  belongs_to :connection
  belongs_to :connection_category
end

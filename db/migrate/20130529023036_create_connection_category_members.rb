class CreateConnectionCategoryMembers < ActiveRecord::Migration
  def change
    create_table :connection_category_members do |t|
      t.integer :connection_id
      t.integer :connection_category_id

      t.timestamps
    end
  end
end

class CreateConnectionGroups < ActiveRecord::Migration
  def change
    create_table :connection_groups do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end

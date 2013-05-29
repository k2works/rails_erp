class RemoveDivisionFromConnection < ActiveRecord::Migration
  def up
    remove_column :connections, :division
  end

  def down
    add_column :connections, :division, :string
  end
end

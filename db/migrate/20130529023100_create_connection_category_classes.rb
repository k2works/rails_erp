class CreateConnectionCategoryClasses < ActiveRecord::Migration
  def change
    create_table :connection_category_classes do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end

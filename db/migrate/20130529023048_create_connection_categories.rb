class CreateConnectionCategories < ActiveRecord::Migration
  def change
    create_table :connection_categories do |t|
      t.string :code
      t.string :name
      t.integer :connection_category_class_id

      t.timestamps
    end
  end
end

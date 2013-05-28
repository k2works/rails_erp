class CreateProductGroupings < ActiveRecord::Migration
  def change
    create_table :product_groupings do |t|
      t.string :code
      t.string :name
      t.string :class_name
      t.integer :product_grouping_id

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name_long
      t.string :name_short
      t.string :name_kana
      t.string :model_number
      t.decimal :unit_sales_price
      t.decimal :purchase_price
      t.decimal :sales_unit_price
      t.string :tax_division
      t.integer :product_grouping_id

      t.timestamps
    end
  end
end

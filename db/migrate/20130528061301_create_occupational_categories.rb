class CreateOccupationalCategories < ActiveRecord::Migration
  def change
    create_table :occupational_categories do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end

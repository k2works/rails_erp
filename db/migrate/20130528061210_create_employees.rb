class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :code
      t.string :name
      t.string :name_kana
      t.date :start_date
      t.integer :department_id
      t.integer :occupational_category_id
      t.string :electronic_approval_id

      t.timestamps
    end
  end
end

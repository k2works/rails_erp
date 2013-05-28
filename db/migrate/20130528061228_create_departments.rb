class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :code
      t.date :start_date
      t.date :end_date
      t.string :name
      t.integer :organization_hierarchy
      t.string :data_input

      t.timestamps
    end
  end
end

class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :code
      t.integer :branch_number
      t.string :name
      t.string :name_kana
      t.string :person_responsible_name
      t.string :department_name
      t.string :zip
      t.string :prefectures
      t.string :address_1
      t.string :address_2
      t.string :phone_number
      t.string :fax_number
      t.string :mail
      t.string :closing_day
      t.string :payment_month
      t.string :payment_day
      t.string :payment_division
      t.integer :connection_id

      t.timestamps
    end
  end
end

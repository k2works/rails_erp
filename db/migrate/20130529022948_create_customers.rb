class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :code
      t.integer :branch_number
      t.string :division
      t.string :billing_code
      t.integer :billing_branch_number
      t.string :collect_code
      t.integer :collect_branch_number
      t.string :name
      t.string :name_kana
      t.string :company_person_responsible_code
      t.string :person_responsible_name
      t.string :department_name
      t.string :zip
      t.string :prefectures
      t.string :address_1
      t.string :address_2
      t.string :phone_number
      t.string :fax_number
      t.string :mail
      t.string :collect_division
      t.string :closing_day_1
      t.string :payment_month_1
      t.string :payment_day_1
      t.string :payment_method_1
      t.string :closing_day_2
      t.string :payment_month_2
      t.string :payment_day_2
      t.string :payment_method_2
      t.string :connection_id

      t.timestamps
    end
  end
end

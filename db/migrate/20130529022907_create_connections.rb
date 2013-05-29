class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :code
      t.string :name
      t.string :name_kana
      t.string :division
      t.string :zip
      t.string :prefectures
      t.string :address_1
      t.string :address_2
      t.string :ban_division
      t.string :miscellaneous_division
      t.decimal :credit_limit
      t.decimal :credit_limit_increas_frame
      t.integer :connection_group_id

      t.timestamps
    end
  end
end

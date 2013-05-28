class CreateElectronicApprovals < ActiveRecord::Migration
  def change
    create_table :electronic_approvals do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end

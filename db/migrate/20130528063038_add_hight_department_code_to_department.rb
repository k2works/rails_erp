class AddHightDepartmentCodeToDepartment < ActiveRecord::Migration
  def change
    add_column :departments, :higt_department_code, :string
  end
end

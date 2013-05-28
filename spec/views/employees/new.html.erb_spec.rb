require 'spec_helper'

describe "employees/new" do
  before(:each) do
    assign(:employee, stub_model(Employee,
      :code => "MyString",
      :name => "MyString",
      :name_kana => "MyString",
      :department_id => 1,
      :occupational_category_id => 1,
      :electronic_approval_id => "MyString"
    ).as_new_record)
  end

  it "renders new employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", employees_path, "post" do
      assert_select "input#employee_code[name=?]", "employee[code]"
      assert_select "input#employee_name[name=?]", "employee[name]"
      assert_select "input#employee_name_kana[name=?]", "employee[name_kana]"
      assert_select "input#employee_department_id[name=?]", "employee[department_id]"
      assert_select "input#employee_occupational_category_id[name=?]", "employee[occupational_category_id]"
      assert_select "input#employee_electronic_approval_id[name=?]", "employee[electronic_approval_id]"
    end
  end
end

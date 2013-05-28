require 'spec_helper'

describe "departments/new" do
  before(:each) do
    assign(:department, stub_model(Department,
      :code => "MyString",
      :name => "MyString",
      :organization_hierarchy => 1,
      :data_input => "MyString"
    ).as_new_record)
  end

  it "renders new department form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", departments_path, "post" do
      assert_select "input#department_code[name=?]", "department[code]"
      assert_select "input#department_name[name=?]", "department[name]"
      assert_select "input#department_organization_hierarchy[name=?]", "department[organization_hierarchy]"
      assert_select "input#department_data_input[name=?]", "department[data_input]"
    end
  end
end

require 'spec_helper'

describe "departments/edit" do
  before(:each) do
    @department = assign(:department, stub_model(Department,
      :code => "MyString",
      :name => "MyString",
      :organization_hierarchy => 1,
      :data_input => "MyString"
    ))
  end

  it "renders the edit department form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", department_path(@department), "post" do
      assert_select "input#department_code[name=?]", "department[code]"
      assert_select "input#department_name[name=?]", "department[name]"
      assert_select "input#department_organization_hierarchy[name=?]", "department[organization_hierarchy]"
      assert_select "input#department_data_input[name=?]", "department[data_input]"
    end
  end
end

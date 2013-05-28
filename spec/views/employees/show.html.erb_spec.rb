require 'spec_helper'

describe "employees/show" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :code => "Code",
      :name => "Name",
      :name_kana => "Name Kana",
      :department_id => 1,
      :occupational_category_id => 2,
      :electronic_approval_id => "Electronic Approval"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
    rendered.should match(/Name Kana/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Electronic Approval/)
  end
end

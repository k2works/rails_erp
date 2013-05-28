require 'spec_helper'

describe "employees/index" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :code => "Code",
        :name => "Name",
        :name_kana => "Name Kana",
        :department_id => 1,
        :occupational_category_id => 2,
        :electronic_approval_id => "Electronic Approval"
      ),
      stub_model(Employee,
        :code => "Code",
        :name => "Name",
        :name_kana => "Name Kana",
        :department_id => 1,
        :occupational_category_id => 2,
        :electronic_approval_id => "Electronic Approval"
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Electronic Approval".to_s, :count => 2
  end
end

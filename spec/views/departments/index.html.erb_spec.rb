require 'spec_helper'

describe "departments/index" do
  before(:each) do
    assign(:departments, [
      stub_model(Department,
        :code => "Code",
        :name => "Name",
        :organization_hierarchy => 1,
        :data_input => "Data Input"
      ),
      stub_model(Department,
        :code => "Code",
        :name => "Name",
        :organization_hierarchy => 1,
        :data_input => "Data Input"
      )
    ])
  end

  it "renders a list of departments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Data Input".to_s, :count => 2
  end
end

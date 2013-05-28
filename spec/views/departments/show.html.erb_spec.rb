require 'spec_helper'

describe "departments/show" do
  before(:each) do
    @department = assign(:department, stub_model(Department,
      :code => "Code",
      :name => "Name",
      :organization_hierarchy => 1,
      :data_input => "Data Input"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Data Input/)
  end
end

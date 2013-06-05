require 'spec_helper'

describe "connection_groups/show" do
  before(:each) do
    @connection_group = assign(:connection_group, stub_model(ConnectionGroup,
      :code => "Code",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
  end
end

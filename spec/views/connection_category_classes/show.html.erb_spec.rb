require 'spec_helper'

describe "connection_category_classes/show" do
  before(:each) do
    @connection_category_class = assign(:connection_category_class, stub_model(ConnectionCategoryClass,
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

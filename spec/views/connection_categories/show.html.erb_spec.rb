require 'spec_helper'

describe "connection_categories/show" do
  before(:each) do
    @connection_category = assign(:connection_category, stub_model(ConnectionCategory,
      :code => "Code",
      :name => "Name",
      :connection_category_class_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end

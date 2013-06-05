require 'spec_helper'

describe "connection_category_classes/index" do
  before(:each) do
    assign(:connection_category_classes, [
      stub_model(ConnectionCategoryClass,
        :code => "Code",
        :name => "Name"
      ),
      stub_model(ConnectionCategoryClass,
        :code => "Code",
        :name => "Name"
      )
    ])
  end

  it "renders a list of connection_category_classes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

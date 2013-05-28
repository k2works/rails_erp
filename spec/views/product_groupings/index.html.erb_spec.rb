require 'spec_helper'

describe "product_groupings/index" do
  before(:each) do
    assign(:product_groupings, [
      stub_model(ProductGrouping,
        :code => "Code",
        :name => "Name",
        :class_name => "Class Name",
        :product_grouping_id => 1
      ),
      stub_model(ProductGrouping,
        :code => "Code",
        :name => "Name",
        :class_name => "Class Name",
        :product_grouping_id => 1
      )
    ])
  end

  it "renders a list of product_groupings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Class Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

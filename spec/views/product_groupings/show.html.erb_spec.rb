require 'spec_helper'

describe "product_groupings/show" do
  before(:each) do
    @product_grouping = assign(:product_grouping, stub_model(ProductGrouping,
      :code => "Code",
      :name => "Name",
      :class_name => "Class Name",
      :product_grouping_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
    rendered.should match(/Class Name/)
    rendered.should match(/1/)
  end
end

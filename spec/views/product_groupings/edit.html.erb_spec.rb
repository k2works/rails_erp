require 'spec_helper'

describe "product_groupings/edit" do
  before(:each) do
    @product_grouping = assign(:product_grouping, stub_model(ProductGrouping,
      :code => "MyString",
      :name => "MyString",
      :class_name => "MyString",
      :product_grouping_id => 1
    ))
  end

  it "renders the edit product_grouping form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_grouping_path(@product_grouping), "post" do
      assert_select "input#product_grouping_code[name=?]", "product_grouping[code]"
      assert_select "input#product_grouping_name[name=?]", "product_grouping[name]"
      assert_select "input#product_grouping_class_name[name=?]", "product_grouping[class_name]"
      assert_select "input#product_grouping_product_grouping_id[name=?]", "product_grouping[product_grouping_id]"
    end
  end
end

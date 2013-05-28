require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :code => "Code",
        :name_long => "Name Long",
        :name_short => "Name Short",
        :name_kana => "Name Kana",
        :model_number => "Model Number",
        :unit_sales_price => "9.99",
        :purchase_price => "9.99",
        :sales_unit_price => "9.99",
        :tax_division => "Tax Division",
        :product_grouping_id => 1
      ),
      stub_model(Product,
        :code => "Code",
        :name_long => "Name Long",
        :name_short => "Name Short",
        :name_kana => "Name Kana",
        :model_number => "Model Number",
        :unit_sales_price => "9.99",
        :purchase_price => "9.99",
        :sales_unit_price => "9.99",
        :tax_division => "Tax Division",
        :product_grouping_id => 1
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name Long".to_s, :count => 2
    assert_select "tr>td", :text => "Name Short".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
    assert_select "tr>td", :text => "Model Number".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Tax Division".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

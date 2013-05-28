require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name Long/)
    rendered.should match(/Name Short/)
    rendered.should match(/Name Kana/)
    rendered.should match(/Model Number/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Tax Division/)
    rendered.should match(/1/)
  end
end

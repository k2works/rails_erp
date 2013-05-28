require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :code => "MyString",
      :name_long => "MyString",
      :name_short => "MyString",
      :name_kana => "MyString",
      :model_number => "MyString",
      :unit_sales_price => "9.99",
      :purchase_price => "9.99",
      :sales_unit_price => "9.99",
      :tax_division => "MyString",
      :product_grouping_id => 1
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input#product_code[name=?]", "product[code]"
      assert_select "input#product_name_long[name=?]", "product[name_long]"
      assert_select "input#product_name_short[name=?]", "product[name_short]"
      assert_select "input#product_name_kana[name=?]", "product[name_kana]"
      assert_select "input#product_model_number[name=?]", "product[model_number]"
      assert_select "input#product_unit_sales_price[name=?]", "product[unit_sales_price]"
      assert_select "input#product_purchase_price[name=?]", "product[purchase_price]"
      assert_select "input#product_sales_unit_price[name=?]", "product[sales_unit_price]"
      assert_select "input#product_tax_division[name=?]", "product[tax_division]"
      assert_select "input#product_product_grouping_id[name=?]", "product[product_grouping_id]"
    end
  end
end

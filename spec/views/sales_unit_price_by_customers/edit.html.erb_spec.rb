require 'spec_helper'

describe "sales_unit_price_by_customers/edit" do
  before(:each) do
    @sales_unit_price_by_customer = assign(:sales_unit_price_by_customer, stub_model(SalesUnitPriceByCustomer,
      :product_id => 1,
      :customer_id => 1,
      :sales_unit_price => "9.99"
    ))
  end

  it "renders the edit sales_unit_price_by_customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sales_unit_price_by_customer_path(@sales_unit_price_by_customer), "post" do
      assert_select "input#sales_unit_price_by_customer_product_id[name=?]", "sales_unit_price_by_customer[product_id]"
      assert_select "input#sales_unit_price_by_customer_customer_id[name=?]", "sales_unit_price_by_customer[customer_id]"
      assert_select "input#sales_unit_price_by_customer_sales_unit_price[name=?]", "sales_unit_price_by_customer[sales_unit_price]"
    end
  end
end

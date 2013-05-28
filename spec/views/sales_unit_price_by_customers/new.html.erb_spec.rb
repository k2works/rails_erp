require 'spec_helper'

describe "sales_unit_price_by_customers/new" do
  before(:each) do
    assign(:sales_unit_price_by_customer, stub_model(SalesUnitPriceByCustomer,
      :product_id => 1,
      :customer_id => 1,
      :sales_unit_price => "9.99"
    ).as_new_record)
  end

  it "renders new sales_unit_price_by_customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sales_unit_price_by_customers_path, "post" do
      assert_select "input#sales_unit_price_by_customer_product_id[name=?]", "sales_unit_price_by_customer[product_id]"
      assert_select "input#sales_unit_price_by_customer_customer_id[name=?]", "sales_unit_price_by_customer[customer_id]"
      assert_select "input#sales_unit_price_by_customer_sales_unit_price[name=?]", "sales_unit_price_by_customer[sales_unit_price]"
    end
  end
end

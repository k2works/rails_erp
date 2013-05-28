require 'spec_helper'

describe "sales_unit_price_by_customers/index" do
  before(:each) do
    assign(:sales_unit_price_by_customers, [
      stub_model(SalesUnitPriceByCustomer,
        :product_id => 1,
        :customer_id => 2,
        :sales_unit_price => "9.99"
      ),
      stub_model(SalesUnitPriceByCustomer,
        :product_id => 1,
        :customer_id => 2,
        :sales_unit_price => "9.99"
      )
    ])
  end

  it "renders a list of sales_unit_price_by_customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

require 'spec_helper'

describe "sales_unit_price_by_customers/show" do
  before(:each) do
    @sales_unit_price_by_customer = assign(:sales_unit_price_by_customer, stub_model(SalesUnitPriceByCustomer,
      :product_id => 1,
      :customer_id => 2,
      :sales_unit_price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
  end
end

require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :order_number => 1,
        :department_id => 2,
        :customer_id => 3,
        :employee_id => 4,
        :customer_order_number => "Customer Order Number",
        :warehouse_code => "Warehouse Code",
        :contract_amount_sum => "9.99",
        :consumption_tax_amount => "9.99",
        :notes => "MyText",
        :order_details_id => 5
      ),
      stub_model(Order,
        :order_number => 1,
        :department_id => 2,
        :customer_id => 3,
        :employee_id => 4,
        :customer_order_number => "Customer Order Number",
        :warehouse_code => "Warehouse Code",
        :contract_amount_sum => "9.99",
        :consumption_tax_amount => "9.99",
        :notes => "MyText",
        :order_details_id => 5
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Customer Order Number".to_s, :count => 2
    assert_select "tr>td", :text => "Warehouse Code".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end

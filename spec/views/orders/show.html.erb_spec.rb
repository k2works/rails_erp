require 'spec_helper'

describe "orders/show" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Customer Order Number/)
    rendered.should match(/Warehouse Code/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/MyText/)
    rendered.should match(/5/)
  end
end

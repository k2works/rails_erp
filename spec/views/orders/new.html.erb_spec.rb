require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :order_number => 1,
      :department_id => 1,
      :customer_id => 1,
      :employee_id => 1,
      :customer_order_number => "MyString",
      :warehouse_code => "MyString",
      :contract_amount_sum => "9.99",
      :consumption_tax_amount => "9.99",
      :notes => "MyText",
      :order_details_id => 1
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orders_path, "post" do
      assert_select "input#order_order_number[name=?]", "order[order_number]"
      assert_select "input#order_department_id[name=?]", "order[department_id]"
      assert_select "input#order_customer_id[name=?]", "order[customer_id]"
      assert_select "input#order_employee_id[name=?]", "order[employee_id]"
      assert_select "input#order_customer_order_number[name=?]", "order[customer_order_number]"
      assert_select "input#order_warehouse_code[name=?]", "order[warehouse_code]"
      assert_select "input#order_contract_amount_sum[name=?]", "order[contract_amount_sum]"
      assert_select "input#order_consumption_tax_amount[name=?]", "order[consumption_tax_amount]"
      assert_select "textarea#order_notes[name=?]", "order[notes]"
      assert_select "input#order_order_details_id[name=?]", "order[order_details_id]"
    end
  end
end

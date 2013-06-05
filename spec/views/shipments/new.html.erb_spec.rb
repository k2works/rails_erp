require 'spec_helper'

describe "shipments/new" do
  before(:each) do
    assign(:shipment, stub_model(Shipment,
      :code => "MyString",
      :branch_number => 1,
      :number => 1,
      :name => "MyString",
      :zip => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :customer_id => 1
    ).as_new_record)
  end

  it "renders new shipment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shipments_path, "post" do
      assert_select "input#shipment_code[name=?]", "shipment[code]"
      assert_select "input#shipment_branch_number[name=?]", "shipment[branch_number]"
      assert_select "input#shipment_number[name=?]", "shipment[number]"
      assert_select "input#shipment_name[name=?]", "shipment[name]"
      assert_select "input#shipment_zip[name=?]", "shipment[zip]"
      assert_select "input#shipment_address_1[name=?]", "shipment[address_1]"
      assert_select "input#shipment_address_2[name=?]", "shipment[address_2]"
      assert_select "input#shipment_customer_id[name=?]", "shipment[customer_id]"
    end
  end
end

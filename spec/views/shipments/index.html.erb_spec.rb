require 'spec_helper'

describe "shipments/index" do
  before(:each) do
    assign(:shipments, [
      stub_model(Shipment,
        :code => "Code",
        :branch_number => 1,
        :number => 2,
        :name => "Name",
        :zip => "Zip",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :customer_id => 3
      ),
      stub_model(Shipment,
        :code => "Code",
        :branch_number => 1,
        :number => 2,
        :name => "Name",
        :zip => "Zip",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :customer_id => 3
      )
    ])
  end

  it "renders a list of shipments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end

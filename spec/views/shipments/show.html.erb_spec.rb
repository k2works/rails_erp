require 'spec_helper'

describe "shipments/show" do
  before(:each) do
    @shipment = assign(:shipment, stub_model(Shipment,
      :code => "Code",
      :branch_number => 1,
      :number => 2,
      :name => "Name",
      :zip => "Zip",
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :customer_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Name/)
    rendered.should match(/Zip/)
    rendered.should match(/Address 1/)
    rendered.should match(/Address 2/)
    rendered.should match(/3/)
  end
end

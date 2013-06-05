require 'spec_helper'

describe "suppliers/show" do
  before(:each) do
    @supplier = assign(:supplier, stub_model(Supplier,
      :code => "Code",
      :branch_number => 1,
      :name => "Name",
      :name_kana => "Name Kana",
      :person_responsible_name => "Person Responsible Name",
      :department_name => "Department Name",
      :zip => "Zip",
      :prefectures => "Prefectures",
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :phone_number => "Phone Number",
      :fax_number => "Fax Number",
      :mail => "Mail",
      :closing_day => "Closing Day",
      :payment_month => "Payment Month",
      :payment_day => "Payment Day",
      :payment_division => "Payment Division",
      :connection_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Name Kana/)
    rendered.should match(/Person Responsible Name/)
    rendered.should match(/Department Name/)
    rendered.should match(/Zip/)
    rendered.should match(/Prefectures/)
    rendered.should match(/Address 1/)
    rendered.should match(/Address 2/)
    rendered.should match(/Phone Number/)
    rendered.should match(/Fax Number/)
    rendered.should match(/Mail/)
    rendered.should match(/Closing Day/)
    rendered.should match(/Payment Month/)
    rendered.should match(/Payment Day/)
    rendered.should match(/Payment Division/)
    rendered.should match(/2/)
  end
end

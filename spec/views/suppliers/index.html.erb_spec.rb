require 'spec_helper'

describe "suppliers/index" do
  before(:each) do
    assign(:suppliers, [
      stub_model(Supplier,
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
      ),
      stub_model(Supplier,
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
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
    assert_select "tr>td", :text => "Person Responsible Name".to_s, :count => 2
    assert_select "tr>td", :text => "Department Name".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Prefectures".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Fax Number".to_s, :count => 2
    assert_select "tr>td", :text => "Mail".to_s, :count => 2
    assert_select "tr>td", :text => "Closing Day".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Month".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Day".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Division".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

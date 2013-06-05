require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :code => "Code",
        :branch_number => 1,
        :division => "Division",
        :billing_code => "Billing Code",
        :billing_branch_number => 2,
        :collect_code => "Collect Code",
        :collect_branch_number => 3,
        :name => "Name",
        :name_kana => "Name Kana",
        :company_person_responsible_code => "Company Person Responsible Code",
        :person_responsible_name => "Person Responsible Name",
        :department_name => "Department Name",
        :zip => "Zip",
        :prefectures => "Prefectures",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :phone_number => "Phone Number",
        :fax_number => "Fax Number",
        :mail => "Mail",
        :collect_division => "Collect Division",
        :closing_day_1 => "Closing Day 1",
        :payment_month_1 => "Payment Month 1",
        :payment_day_1 => "Payment Day 1",
        :payment_method_1 => "Payment Method 1",
        :closing_day_2 => "Closing Day 2",
        :payment_month_2 => "Payment Month 2",
        :payment_day_2 => "Payment Day 2",
        :payment_method_2 => "Payment Method 2",
        :connection_id => "Connection"
      ),
      stub_model(Customer,
        :code => "Code",
        :branch_number => 1,
        :division => "Division",
        :billing_code => "Billing Code",
        :billing_branch_number => 2,
        :collect_code => "Collect Code",
        :collect_branch_number => 3,
        :name => "Name",
        :name_kana => "Name Kana",
        :company_person_responsible_code => "Company Person Responsible Code",
        :person_responsible_name => "Person Responsible Name",
        :department_name => "Department Name",
        :zip => "Zip",
        :prefectures => "Prefectures",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :phone_number => "Phone Number",
        :fax_number => "Fax Number",
        :mail => "Mail",
        :collect_division => "Collect Division",
        :closing_day_1 => "Closing Day 1",
        :payment_month_1 => "Payment Month 1",
        :payment_day_1 => "Payment Day 1",
        :payment_method_1 => "Payment Method 1",
        :closing_day_2 => "Closing Day 2",
        :payment_month_2 => "Payment Month 2",
        :payment_day_2 => "Payment Day 2",
        :payment_method_2 => "Payment Method 2",
        :connection_id => "Connection"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Division".to_s, :count => 2
    assert_select "tr>td", :text => "Billing Code".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Collect Code".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
    assert_select "tr>td", :text => "Company Person Responsible Code".to_s, :count => 2
    assert_select "tr>td", :text => "Person Responsible Name".to_s, :count => 2
    assert_select "tr>td", :text => "Department Name".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Prefectures".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Fax Number".to_s, :count => 2
    assert_select "tr>td", :text => "Mail".to_s, :count => 2
    assert_select "tr>td", :text => "Collect Division".to_s, :count => 2
    assert_select "tr>td", :text => "Closing Day 1".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Month 1".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Day 1".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Method 1".to_s, :count => 2
    assert_select "tr>td", :text => "Closing Day 2".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Month 2".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Day 2".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Method 2".to_s, :count => 2
    assert_select "tr>td", :text => "Connection".to_s, :count => 2
  end
end

require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/1/)
    rendered.should match(/Division/)
    rendered.should match(/Billing Code/)
    rendered.should match(/2/)
    rendered.should match(/Collect Code/)
    rendered.should match(/3/)
    rendered.should match(/Name/)
    rendered.should match(/Name Kana/)
    rendered.should match(/Company Person Responsible Code/)
    rendered.should match(/Person Responsible Name/)
    rendered.should match(/Department Name/)
    rendered.should match(/Zip/)
    rendered.should match(/Prefectures/)
    rendered.should match(/Address 1/)
    rendered.should match(/Address 2/)
    rendered.should match(/Phone Number/)
    rendered.should match(/Fax Number/)
    rendered.should match(/Mail/)
    rendered.should match(/Collect Division/)
    rendered.should match(/Closing Day 1/)
    rendered.should match(/Payment Month 1/)
    rendered.should match(/Payment Day 1/)
    rendered.should match(/Payment Method 1/)
    rendered.should match(/Closing Day 2/)
    rendered.should match(/Payment Month 2/)
    rendered.should match(/Payment Day 2/)
    rendered.should match(/Payment Method 2/)
    rendered.should match(/Connection/)
  end
end

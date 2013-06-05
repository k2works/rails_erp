require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :code => "MyString",
      :branch_number => 1,
      :division => "MyString",
      :billing_code => "MyString",
      :billing_branch_number => 1,
      :collect_code => "MyString",
      :collect_branch_number => 1,
      :name => "MyString",
      :name_kana => "MyString",
      :company_person_responsible_code => "MyString",
      :person_responsible_name => "MyString",
      :department_name => "MyString",
      :zip => "MyString",
      :prefectures => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :phone_number => "MyString",
      :fax_number => "MyString",
      :mail => "MyString",
      :collect_division => "MyString",
      :closing_day_1 => "MyString",
      :payment_month_1 => "MyString",
      :payment_day_1 => "MyString",
      :payment_method_1 => "MyString",
      :closing_day_2 => "MyString",
      :payment_month_2 => "MyString",
      :payment_day_2 => "MyString",
      :payment_method_2 => "MyString",
      :connection_id => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do
      assert_select "input#customer_code[name=?]", "customer[code]"
      assert_select "input#customer_branch_number[name=?]", "customer[branch_number]"
      assert_select "input#customer_division[name=?]", "customer[division]"
      assert_select "input#customer_billing_code[name=?]", "customer[billing_code]"
      assert_select "input#customer_billing_branch_number[name=?]", "customer[billing_branch_number]"
      assert_select "input#customer_collect_code[name=?]", "customer[collect_code]"
      assert_select "input#customer_collect_branch_number[name=?]", "customer[collect_branch_number]"
      assert_select "input#customer_name[name=?]", "customer[name]"
      assert_select "input#customer_name_kana[name=?]", "customer[name_kana]"
      assert_select "input#customer_company_person_responsible_code[name=?]", "customer[company_person_responsible_code]"
      assert_select "input#customer_person_responsible_name[name=?]", "customer[person_responsible_name]"
      assert_select "input#customer_department_name[name=?]", "customer[department_name]"
      assert_select "input#customer_zip[name=?]", "customer[zip]"
      assert_select "input#customer_prefectures[name=?]", "customer[prefectures]"
      assert_select "input#customer_address_1[name=?]", "customer[address_1]"
      assert_select "input#customer_address_2[name=?]", "customer[address_2]"
      assert_select "input#customer_phone_number[name=?]", "customer[phone_number]"
      assert_select "input#customer_fax_number[name=?]", "customer[fax_number]"
      assert_select "input#customer_mail[name=?]", "customer[mail]"
      assert_select "input#customer_collect_division[name=?]", "customer[collect_division]"
      assert_select "input#customer_closing_day_1[name=?]", "customer[closing_day_1]"
      assert_select "input#customer_payment_month_1[name=?]", "customer[payment_month_1]"
      assert_select "input#customer_payment_day_1[name=?]", "customer[payment_day_1]"
      assert_select "input#customer_payment_method_1[name=?]", "customer[payment_method_1]"
      assert_select "input#customer_closing_day_2[name=?]", "customer[closing_day_2]"
      assert_select "input#customer_payment_month_2[name=?]", "customer[payment_month_2]"
      assert_select "input#customer_payment_day_2[name=?]", "customer[payment_day_2]"
      assert_select "input#customer_payment_method_2[name=?]", "customer[payment_method_2]"
      assert_select "input#customer_connection_id[name=?]", "customer[connection_id]"
    end
  end
end

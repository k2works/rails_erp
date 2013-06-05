require 'spec_helper'

describe "suppliers/edit" do
  before(:each) do
    @supplier = assign(:supplier, stub_model(Supplier,
      :code => "MyString",
      :branch_number => 1,
      :name => "MyString",
      :name_kana => "MyString",
      :person_responsible_name => "MyString",
      :department_name => "MyString",
      :zip => "MyString",
      :prefectures => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :phone_number => "MyString",
      :fax_number => "MyString",
      :mail => "MyString",
      :closing_day => "MyString",
      :payment_month => "MyString",
      :payment_day => "MyString",
      :payment_division => "MyString",
      :connection_id => 1
    ))
  end

  it "renders the edit supplier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", supplier_path(@supplier), "post" do
      assert_select "input#supplier_code[name=?]", "supplier[code]"
      assert_select "input#supplier_branch_number[name=?]", "supplier[branch_number]"
      assert_select "input#supplier_name[name=?]", "supplier[name]"
      assert_select "input#supplier_name_kana[name=?]", "supplier[name_kana]"
      assert_select "input#supplier_person_responsible_name[name=?]", "supplier[person_responsible_name]"
      assert_select "input#supplier_department_name[name=?]", "supplier[department_name]"
      assert_select "input#supplier_zip[name=?]", "supplier[zip]"
      assert_select "input#supplier_prefectures[name=?]", "supplier[prefectures]"
      assert_select "input#supplier_address_1[name=?]", "supplier[address_1]"
      assert_select "input#supplier_address_2[name=?]", "supplier[address_2]"
      assert_select "input#supplier_phone_number[name=?]", "supplier[phone_number]"
      assert_select "input#supplier_fax_number[name=?]", "supplier[fax_number]"
      assert_select "input#supplier_mail[name=?]", "supplier[mail]"
      assert_select "input#supplier_closing_day[name=?]", "supplier[closing_day]"
      assert_select "input#supplier_payment_month[name=?]", "supplier[payment_month]"
      assert_select "input#supplier_payment_day[name=?]", "supplier[payment_day]"
      assert_select "input#supplier_payment_division[name=?]", "supplier[payment_division]"
      assert_select "input#supplier_connection_id[name=?]", "supplier[connection_id]"
    end
  end
end

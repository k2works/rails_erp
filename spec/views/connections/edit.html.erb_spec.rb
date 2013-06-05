require 'spec_helper'

describe "connections/edit" do
  before(:each) do
    @connection = assign(:connection, stub_model(Connection,
      :code => "MyString",
      :name => "MyString",
      :name_kana => "MyString",
      :division => "MyString",
      :zip => "MyString",
      :prefectures => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :ban_division => "MyString",
      :miscellaneous_division => "MyString",
      :credit_limit => "9.99",
      :credit_limit_increas_frame => "9.99",
      :connection_group_id => 1
    ))
  end

  it "renders the edit connection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", connection_path(@connection), "post" do
      assert_select "input#connection_code[name=?]", "connection[code]"
      assert_select "input#connection_name[name=?]", "connection[name]"
      assert_select "input#connection_name_kana[name=?]", "connection[name_kana]"
      assert_select "input#connection_division[name=?]", "connection[division]"
      assert_select "input#connection_zip[name=?]", "connection[zip]"
      assert_select "input#connection_prefectures[name=?]", "connection[prefectures]"
      assert_select "input#connection_address_1[name=?]", "connection[address_1]"
      assert_select "input#connection_address_2[name=?]", "connection[address_2]"
      assert_select "input#connection_ban_division[name=?]", "connection[ban_division]"
      assert_select "input#connection_miscellaneous_division[name=?]", "connection[miscellaneous_division]"
      assert_select "input#connection_credit_limit[name=?]", "connection[credit_limit]"
      assert_select "input#connection_credit_limit_increas_frame[name=?]", "connection[credit_limit_increas_frame]"
      assert_select "input#connection_connection_group_id[name=?]", "connection[connection_group_id]"
    end
  end
end

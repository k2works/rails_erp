require 'spec_helper'

describe "connections/index" do
  before(:each) do
    assign(:connections, [
      stub_model(Connection,
        :code => "Code",
        :name => "Name",
        :name_kana => "Name Kana",
        :division => "Division",
        :zip => "Zip",
        :prefectures => "Prefectures",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :ban_division => "Ban Division",
        :miscellaneous_division => "Miscellaneous Division",
        :credit_limit => "9.99",
        :credit_limit_increas_frame => "9.99",
        :connection_group_id => 1
      ),
      stub_model(Connection,
        :code => "Code",
        :name => "Name",
        :name_kana => "Name Kana",
        :division => "Division",
        :zip => "Zip",
        :prefectures => "Prefectures",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :ban_division => "Ban Division",
        :miscellaneous_division => "Miscellaneous Division",
        :credit_limit => "9.99",
        :credit_limit_increas_frame => "9.99",
        :connection_group_id => 1
      )
    ])
  end

  it "renders a list of connections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
    assert_select "tr>td", :text => "Division".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Prefectures".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "Ban Division".to_s, :count => 2
    assert_select "tr>td", :text => "Miscellaneous Division".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

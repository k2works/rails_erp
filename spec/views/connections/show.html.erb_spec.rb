require 'spec_helper'

describe "connections/show" do
  before(:each) do
    @connection = assign(:connection, stub_model(Connection,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
    rendered.should match(/Name Kana/)
    rendered.should match(/Division/)
    rendered.should match(/Zip/)
    rendered.should match(/Prefectures/)
    rendered.should match(/Address 1/)
    rendered.should match(/Address 2/)
    rendered.should match(/Ban Division/)
    rendered.should match(/Miscellaneous Division/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
  end
end

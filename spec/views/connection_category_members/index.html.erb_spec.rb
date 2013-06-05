require 'spec_helper'

describe "connection_category_members/index" do
  before(:each) do
    assign(:connection_category_members, [
      stub_model(ConnectionCategoryMember,
        :connection_id => 1,
        :connection_category_id => 2
      ),
      stub_model(ConnectionCategoryMember,
        :connection_id => 1,
        :connection_category_id => 2
      )
    ])
  end

  it "renders a list of connection_category_members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

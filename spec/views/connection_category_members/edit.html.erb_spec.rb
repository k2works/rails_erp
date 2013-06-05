require 'spec_helper'

describe "connection_category_members/edit" do
  before(:each) do
    @connection_category_member = assign(:connection_category_member, stub_model(ConnectionCategoryMember,
      :connection_id => 1,
      :connection_category_id => 1
    ))
  end

  it "renders the edit connection_category_member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", connection_category_member_path(@connection_category_member), "post" do
      assert_select "input#connection_category_member_connection_id[name=?]", "connection_category_member[connection_id]"
      assert_select "input#connection_category_member_connection_category_id[name=?]", "connection_category_member[connection_category_id]"
    end
  end
end

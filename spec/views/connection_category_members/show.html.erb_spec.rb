require 'spec_helper'

describe "connection_category_members/show" do
  before(:each) do
    @connection_category_member = assign(:connection_category_member, stub_model(ConnectionCategoryMember,
      :connection_id => 1,
      :connection_category_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end

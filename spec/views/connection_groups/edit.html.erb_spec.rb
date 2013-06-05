require 'spec_helper'

describe "connection_groups/edit" do
  before(:each) do
    @connection_group = assign(:connection_group, stub_model(ConnectionGroup,
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit connection_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", connection_group_path(@connection_group), "post" do
      assert_select "input#connection_group_code[name=?]", "connection_group[code]"
      assert_select "input#connection_group_name[name=?]", "connection_group[name]"
    end
  end
end

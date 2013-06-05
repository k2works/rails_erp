require 'spec_helper'

describe "connection_groups/new" do
  before(:each) do
    assign(:connection_group, stub_model(ConnectionGroup,
      :code => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new connection_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", connection_groups_path, "post" do
      assert_select "input#connection_group_code[name=?]", "connection_group[code]"
      assert_select "input#connection_group_name[name=?]", "connection_group[name]"
    end
  end
end

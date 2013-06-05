require 'spec_helper'

describe "connection_categories/edit" do
  before(:each) do
    @connection_category = assign(:connection_category, stub_model(ConnectionCategory,
      :code => "MyString",
      :name => "MyString",
      :connection_category_class_id => 1
    ))
  end

  it "renders the edit connection_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", connection_category_path(@connection_category), "post" do
      assert_select "input#connection_category_code[name=?]", "connection_category[code]"
      assert_select "input#connection_category_name[name=?]", "connection_category[name]"
      assert_select "input#connection_category_connection_category_class_id[name=?]", "connection_category[connection_category_class_id]"
    end
  end
end

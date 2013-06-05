require 'spec_helper'

describe "connection_categories/new" do
  before(:each) do
    assign(:connection_category, stub_model(ConnectionCategory,
      :code => "MyString",
      :name => "MyString",
      :connection_category_class_id => 1
    ).as_new_record)
  end

  it "renders new connection_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", connection_categories_path, "post" do
      assert_select "input#connection_category_code[name=?]", "connection_category[code]"
      assert_select "input#connection_category_name[name=?]", "connection_category[name]"
      assert_select "input#connection_category_connection_category_class_id[name=?]", "connection_category[connection_category_class_id]"
    end
  end
end

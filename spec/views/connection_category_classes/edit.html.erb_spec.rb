require 'spec_helper'

describe "connection_category_classes/edit" do
  before(:each) do
    @connection_category_class = assign(:connection_category_class, stub_model(ConnectionCategoryClass,
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit connection_category_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", connection_category_class_path(@connection_category_class), "post" do
      assert_select "input#connection_category_class_code[name=?]", "connection_category_class[code]"
      assert_select "input#connection_category_class_name[name=?]", "connection_category_class[name]"
    end
  end
end

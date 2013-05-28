require 'spec_helper'

describe "occupational_categories/new" do
  before(:each) do
    assign(:occupational_category, stub_model(OccupationalCategory,
      :code => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new occupational_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", occupational_categories_path, "post" do
      assert_select "input#occupational_category_code[name=?]", "occupational_category[code]"
      assert_select "input#occupational_category_name[name=?]", "occupational_category[name]"
    end
  end
end

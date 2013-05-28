require 'spec_helper'

describe "occupational_categories/edit" do
  before(:each) do
    @occupational_category = assign(:occupational_category, stub_model(OccupationalCategory,
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit occupational_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", occupational_category_path(@occupational_category), "post" do
      assert_select "input#occupational_category_code[name=?]", "occupational_category[code]"
      assert_select "input#occupational_category_name[name=?]", "occupational_category[name]"
    end
  end
end

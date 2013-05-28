require 'spec_helper'

describe "electronic_approvals/new" do
  before(:each) do
    assign(:electronic_approval, stub_model(ElectronicApproval,
      :code => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new electronic_approval form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", electronic_approvals_path, "post" do
      assert_select "input#electronic_approval_code[name=?]", "electronic_approval[code]"
      assert_select "input#electronic_approval_name[name=?]", "electronic_approval[name]"
    end
  end
end

require 'spec_helper'

describe "electronic_approvals/edit" do
  before(:each) do
    @electronic_approval = assign(:electronic_approval, stub_model(ElectronicApproval,
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit electronic_approval form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", electronic_approval_path(@electronic_approval), "post" do
      assert_select "input#electronic_approval_code[name=?]", "electronic_approval[code]"
      assert_select "input#electronic_approval_name[name=?]", "electronic_approval[name]"
    end
  end
end

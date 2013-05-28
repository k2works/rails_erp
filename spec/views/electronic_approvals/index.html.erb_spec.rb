require 'spec_helper'

describe "electronic_approvals/index" do
  before(:each) do
    assign(:electronic_approvals, [
      stub_model(ElectronicApproval,
        :code => "Code",
        :name => "Name"
      ),
      stub_model(ElectronicApproval,
        :code => "Code",
        :name => "Name"
      )
    ])
  end

  it "renders a list of electronic_approvals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

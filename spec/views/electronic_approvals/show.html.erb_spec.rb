require 'spec_helper'

describe "electronic_approvals/show" do
  before(:each) do
    @electronic_approval = assign(:electronic_approval, stub_model(ElectronicApproval,
      :code => "Code",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
  end
end

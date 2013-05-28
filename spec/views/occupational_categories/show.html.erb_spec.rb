require 'spec_helper'

describe "occupational_categories/show" do
  before(:each) do
    @occupational_category = assign(:occupational_category, stub_model(OccupationalCategory,
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

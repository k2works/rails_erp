require 'spec_helper'

describe "occupational_categories/index" do
  before(:each) do
    assign(:occupational_categories, [
      stub_model(OccupationalCategory,
        :code => "Code",
        :name => "Name"
      ),
      stub_model(OccupationalCategory,
        :code => "Code",
        :name => "Name"
      )
    ])
  end

  it "renders a list of occupational_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

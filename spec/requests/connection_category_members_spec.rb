require 'spec_helper'

describe "ConnectionCategoryMembers" do
  describe "GET /connection_category_members" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get connection_category_members_path
      response.status.should be(200)
    end
  end
end

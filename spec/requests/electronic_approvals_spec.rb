require 'spec_helper'

describe "ElectronicApprovals" do
  describe "GET /electronic_approvals" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get electronic_approvals_path
      response.status.should be(200)
    end
  end
end

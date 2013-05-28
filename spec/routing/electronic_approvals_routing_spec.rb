require "spec_helper"

describe ElectronicApprovalsController do
  describe "routing" do

    it "routes to #index" do
      get("/electronic_approvals").should route_to("electronic_approvals#index")
    end

    it "routes to #new" do
      get("/electronic_approvals/new").should route_to("electronic_approvals#new")
    end

    it "routes to #show" do
      get("/electronic_approvals/1").should route_to("electronic_approvals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/electronic_approvals/1/edit").should route_to("electronic_approvals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/electronic_approvals").should route_to("electronic_approvals#create")
    end

    it "routes to #update" do
      put("/electronic_approvals/1").should route_to("electronic_approvals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/electronic_approvals/1").should route_to("electronic_approvals#destroy", :id => "1")
    end

  end
end

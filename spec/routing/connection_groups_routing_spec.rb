require "spec_helper"

describe ConnectionGroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/connection_groups").should route_to("connection_groups#index")
    end

    it "routes to #new" do
      get("/connection_groups/new").should route_to("connection_groups#new")
    end

    it "routes to #show" do
      get("/connection_groups/1").should route_to("connection_groups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/connection_groups/1/edit").should route_to("connection_groups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/connection_groups").should route_to("connection_groups#create")
    end

    it "routes to #update" do
      put("/connection_groups/1").should route_to("connection_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/connection_groups/1").should route_to("connection_groups#destroy", :id => "1")
    end

  end
end

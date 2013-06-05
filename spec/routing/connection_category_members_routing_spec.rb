require "spec_helper"

describe ConnectionCategoryMembersController do
  describe "routing" do

    it "routes to #index" do
      get("/connection_category_members").should route_to("connection_category_members#index")
    end

    it "routes to #new" do
      get("/connection_category_members/new").should route_to("connection_category_members#new")
    end

    it "routes to #show" do
      get("/connection_category_members/1").should route_to("connection_category_members#show", :id => "1")
    end

    it "routes to #edit" do
      get("/connection_category_members/1/edit").should route_to("connection_category_members#edit", :id => "1")
    end

    it "routes to #create" do
      post("/connection_category_members").should route_to("connection_category_members#create")
    end

    it "routes to #update" do
      put("/connection_category_members/1").should route_to("connection_category_members#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/connection_category_members/1").should route_to("connection_category_members#destroy", :id => "1")
    end

  end
end

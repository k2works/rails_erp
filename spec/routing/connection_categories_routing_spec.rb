require "spec_helper"

describe ConnectionCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/connection_categories").should route_to("connection_categories#index")
    end

    it "routes to #new" do
      get("/connection_categories/new").should route_to("connection_categories#new")
    end

    it "routes to #show" do
      get("/connection_categories/1").should route_to("connection_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/connection_categories/1/edit").should route_to("connection_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/connection_categories").should route_to("connection_categories#create")
    end

    it "routes to #update" do
      put("/connection_categories/1").should route_to("connection_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/connection_categories/1").should route_to("connection_categories#destroy", :id => "1")
    end

  end
end

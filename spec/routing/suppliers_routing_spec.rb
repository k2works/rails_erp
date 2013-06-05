require "spec_helper"

describe SuppliersController do
  describe "routing" do

    it "routes to #index" do
      get("/suppliers").should route_to("suppliers#index")
    end

    it "routes to #new" do
      get("/suppliers/new").should route_to("suppliers#new")
    end

    it "routes to #show" do
      get("/suppliers/1").should route_to("suppliers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/suppliers/1/edit").should route_to("suppliers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/suppliers").should route_to("suppliers#create")
    end

    it "routes to #update" do
      put("/suppliers/1").should route_to("suppliers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/suppliers/1").should route_to("suppliers#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe ShipmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/shipments").should route_to("shipments#index")
    end

    it "routes to #new" do
      get("/shipments/new").should route_to("shipments#new")
    end

    it "routes to #show" do
      get("/shipments/1").should route_to("shipments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shipments/1/edit").should route_to("shipments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shipments").should route_to("shipments#create")
    end

    it "routes to #update" do
      put("/shipments/1").should route_to("shipments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shipments/1").should route_to("shipments#destroy", :id => "1")
    end

  end
end

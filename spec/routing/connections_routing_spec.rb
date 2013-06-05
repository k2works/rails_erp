require "spec_helper"

describe ConnectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/connections").should route_to("connections#index")
    end

    it "routes to #new" do
      get("/connections/new").should route_to("connections#new")
    end

    it "routes to #show" do
      get("/connections/1").should route_to("connections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/connections/1/edit").should route_to("connections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/connections").should route_to("connections#create")
    end

    it "routes to #update" do
      put("/connections/1").should route_to("connections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/connections/1").should route_to("connections#destroy", :id => "1")
    end

  end
end

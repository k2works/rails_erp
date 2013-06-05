require "spec_helper"

describe ConnectionCategoryClassesController do
  describe "routing" do

    it "routes to #index" do
      get("/connection_category_classes").should route_to("connection_category_classes#index")
    end

    it "routes to #new" do
      get("/connection_category_classes/new").should route_to("connection_category_classes#new")
    end

    it "routes to #show" do
      get("/connection_category_classes/1").should route_to("connection_category_classes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/connection_category_classes/1/edit").should route_to("connection_category_classes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/connection_category_classes").should route_to("connection_category_classes#create")
    end

    it "routes to #update" do
      put("/connection_category_classes/1").should route_to("connection_category_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/connection_category_classes/1").should route_to("connection_category_classes#destroy", :id => "1")
    end

  end
end

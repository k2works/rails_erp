require "spec_helper"

describe ProductGroupingsController do
  describe "routing" do

    it "routes to #index" do
      get("/product_groupings").should route_to("product_groupings#index")
    end

    it "routes to #new" do
      get("/product_groupings/new").should route_to("product_groupings#new")
    end

    it "routes to #show" do
      get("/product_groupings/1").should route_to("product_groupings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/product_groupings/1/edit").should route_to("product_groupings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/product_groupings").should route_to("product_groupings#create")
    end

    it "routes to #update" do
      put("/product_groupings/1").should route_to("product_groupings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/product_groupings/1").should route_to("product_groupings#destroy", :id => "1")
    end

  end
end

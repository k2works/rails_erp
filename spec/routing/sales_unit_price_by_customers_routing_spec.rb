require "spec_helper"

describe SalesUnitPriceByCustomersController do
  describe "routing" do

    it "routes to #index" do
      get("/sales_unit_price_by_customers").should route_to("sales_unit_price_by_customers#index")
    end

    it "routes to #new" do
      get("/sales_unit_price_by_customers/new").should route_to("sales_unit_price_by_customers#new")
    end

    it "routes to #show" do
      get("/sales_unit_price_by_customers/1").should route_to("sales_unit_price_by_customers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sales_unit_price_by_customers/1/edit").should route_to("sales_unit_price_by_customers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sales_unit_price_by_customers").should route_to("sales_unit_price_by_customers#create")
    end

    it "routes to #update" do
      put("/sales_unit_price_by_customers/1").should route_to("sales_unit_price_by_customers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sales_unit_price_by_customers/1").should route_to("sales_unit_price_by_customers#destroy", :id => "1")
    end

  end
end

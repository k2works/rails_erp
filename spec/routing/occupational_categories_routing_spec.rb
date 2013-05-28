require "spec_helper"

describe OccupationalCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/occupational_categories").should route_to("occupational_categories#index")
    end

    it "routes to #new" do
      get("/occupational_categories/new").should route_to("occupational_categories#new")
    end

    it "routes to #show" do
      get("/occupational_categories/1").should route_to("occupational_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/occupational_categories/1/edit").should route_to("occupational_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/occupational_categories").should route_to("occupational_categories#create")
    end

    it "routes to #update" do
      put("/occupational_categories/1").should route_to("occupational_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/occupational_categories/1").should route_to("occupational_categories#destroy", :id => "1")
    end

  end
end

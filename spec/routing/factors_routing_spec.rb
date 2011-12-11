require "spec_helper"

describe FactorsController do
  describe "routing" do

    it "routes to #index" do
      get("/factors").should route_to("factors#index")
    end

    it "routes to #new" do
      get("/factors/new").should route_to("factors#new")
    end

    it "routes to #show" do
      get("/factors/1").should route_to("factors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/factors/1/edit").should route_to("factors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/factors").should route_to("factors#create")
    end

    it "routes to #update" do
      put("/factors/1").should route_to("factors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/factors/1").should route_to("factors#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe LiftsetsController do
  describe "routing" do

    it "routes to #index" do
      get("/liftsets").should route_to("liftsets#index")
    end

    it "routes to #new" do
      get("/liftsets/new").should route_to("liftsets#new")
    end

    it "routes to #show" do
      get("/liftsets/1").should route_to("liftsets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/liftsets/1/edit").should route_to("liftsets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/liftsets").should route_to("liftsets#create")
    end

    it "routes to #update" do
      put("/liftsets/1").should route_to("liftsets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/liftsets/1").should route_to("liftsets#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe WodsController do
  describe "routing" do

    it "routes to #index" do
      get("/wods").should route_to("wods#index")
    end

    it "routes to #new" do
      get("/wods/new").should route_to("wods#new")
    end

    it "routes to #show" do
      get("/wods/1").should route_to("wods#show", :id => "1")
    end

    it "routes to #edit" do
      get("/wods/1/edit").should route_to("wods#edit", :id => "1")
    end

    it "routes to #create" do
      post("/wods").should route_to("wods#create")
    end

    it "routes to #update" do
      put("/wods/1").should route_to("wods#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/wods/1").should route_to("wods#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe ImporttodbsController do
  describe "routing" do

    it "routes to #index" do
      get("/importtodbs").should route_to("importtodbs#index")
    end

    it "routes to #new" do
      get("/importtodbs/new").should route_to("importtodbs#new")
    end

    it "routes to #show" do
      get("/importtodbs/1").should route_to("importtodbs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/importtodbs/1/edit").should route_to("importtodbs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/importtodbs").should route_to("importtodbs#create")
    end

    it "routes to #update" do
      put("/importtodbs/1").should route_to("importtodbs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/importtodbs/1").should route_to("importtodbs#destroy", :id => "1")
    end

  end
end

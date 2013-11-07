require "spec_helper"

describe FotoGalerisController do
  describe "routing" do

    it "routes to #index" do
      get("/foto_galeris").should route_to("foto_galeris#index")
    end

    it "routes to #new" do
      get("/foto_galeris/new").should route_to("foto_galeris#new")
    end

    it "routes to #show" do
      get("/foto_galeris/1").should route_to("foto_galeris#show", :id => "1")
    end

    it "routes to #edit" do
      get("/foto_galeris/1/edit").should route_to("foto_galeris#edit", :id => "1")
    end

    it "routes to #create" do
      post("/foto_galeris").should route_to("foto_galeris#create")
    end

    it "routes to #update" do
      put("/foto_galeris/1").should route_to("foto_galeris#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/foto_galeris/1").should route_to("foto_galeris#destroy", :id => "1")
    end

  end
end

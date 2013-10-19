require "spec_helper"

describe DbJmlhPddksController do
  describe "routing" do

    it "routes to #index" do
      get("/db_jmlh_pddks").should route_to("db_jmlh_pddks#index")
    end

    it "routes to #new" do
      get("/db_jmlh_pddks/new").should route_to("db_jmlh_pddks#new")
    end

    it "routes to #show" do
      get("/db_jmlh_pddks/1").should route_to("db_jmlh_pddks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/db_jmlh_pddks/1/edit").should route_to("db_jmlh_pddks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/db_jmlh_pddks").should route_to("db_jmlh_pddks#create")
    end

    it "routes to #update" do
      put("/db_jmlh_pddks/1").should route_to("db_jmlh_pddks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/db_jmlh_pddks/1").should route_to("db_jmlh_pddks#destroy", :id => "1")
    end

  end
end

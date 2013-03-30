require "spec_helper"

describe EtfsController do
  describe "routing" do

    it "routes to #index" do
      get("/etfs").should route_to("etfs#index")
    end

    it "routes to #new" do
      get("/etfs/new").should route_to("etfs#new")
    end

    it "routes to #show" do
      get("/etfs/1").should route_to("etfs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/etfs/1/edit").should route_to("etfs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/etfs").should route_to("etfs#create")
    end

    it "routes to #update" do
      put("/etfs/1").should route_to("etfs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/etfs/1").should route_to("etfs#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe CustomerPortalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/customer_portals").to route_to("customer_portals#index")
    end

    it "routes to #new" do
      expect(:get => "/customer_portals/new").to route_to("customer_portals#new")
    end

    it "routes to #show" do
      expect(:get => "/customer_portals/1").to route_to("customer_portals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/customer_portals/1/edit").to route_to("customer_portals#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/customer_portals").to route_to("customer_portals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/customer_portals/1").to route_to("customer_portals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/customer_portals/1").to route_to("customer_portals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/customer_portals/1").to route_to("customer_portals#destroy", :id => "1")
    end
  end
end

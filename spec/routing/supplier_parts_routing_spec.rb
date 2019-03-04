require "rails_helper"

RSpec.describe SupplierPartsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/supplier_parts").to route_to("supplier_parts#index")
    end

    it "routes to #new" do
      expect(:get => "/supplier_parts/new").to route_to("supplier_parts#new")
    end

    it "routes to #show" do
      expect(:get => "/supplier_parts/1").to route_to("supplier_parts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/supplier_parts/1/edit").to route_to("supplier_parts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/supplier_parts").to route_to("supplier_parts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/supplier_parts/1").to route_to("supplier_parts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/supplier_parts/1").to route_to("supplier_parts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/supplier_parts/1").to route_to("supplier_parts#destroy", :id => "1")
    end
  end
end

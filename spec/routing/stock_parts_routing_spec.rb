require "rails_helper"

RSpec.describe StockPartsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/stock_parts").to route_to("stock_parts#index")
    end

    it "routes to #new" do
      expect(:get => "/stock_parts/new").to route_to("stock_parts#new")
    end

    it "routes to #show" do
      expect(:get => "/stock_parts/1").to route_to("stock_parts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stock_parts/1/edit").to route_to("stock_parts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/stock_parts").to route_to("stock_parts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stock_parts/1").to route_to("stock_parts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stock_parts/1").to route_to("stock_parts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stock_parts/1").to route_to("stock_parts#destroy", :id => "1")
    end
  end
end

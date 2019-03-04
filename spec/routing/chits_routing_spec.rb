require "rails_helper"

RSpec.describe ChitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/chits").to route_to("chits#index")
    end

    it "routes to #new" do
      expect(:get => "/chits/new").to route_to("chits#new")
    end

    it "routes to #show" do
      expect(:get => "/chits/1").to route_to("chits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/chits/1/edit").to route_to("chits#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/chits").to route_to("chits#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chits/1").to route_to("chits#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chits/1").to route_to("chits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chits/1").to route_to("chits#destroy", :id => "1")
    end
  end
end

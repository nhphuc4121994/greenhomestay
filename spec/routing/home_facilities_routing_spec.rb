require "rails_helper"

RSpec.describe HomeFacilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/home_facilities").to route_to("home_facilities#index")
    end


    it "routes to #show" do
      expect(:get => "/home_facilities/1").to route_to("home_facilities#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/home_facilities").to route_to("home_facilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/home_facilities/1").to route_to("home_facilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/home_facilities/1").to route_to("home_facilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/home_facilities/1").to route_to("home_facilities#destroy", :id => "1")
    end

  end
end

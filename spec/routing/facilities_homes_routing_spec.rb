require "rails_helper"

RSpec.describe FacilitiesHomesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/facilities_homes").to route_to("facilities_homes#index")
    end


    it "routes to #show" do
      expect(:get => "/facilities_homes/1").to route_to("facilities_homes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/facilities_homes").to route_to("facilities_homes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/facilities_homes/1").to route_to("facilities_homes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/facilities_homes/1").to route_to("facilities_homes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/facilities_homes/1").to route_to("facilities_homes#destroy", :id => "1")
    end

  end
end

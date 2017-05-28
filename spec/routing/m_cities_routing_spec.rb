require "rails_helper"

RSpec.describe MCitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/m_cities").to route_to("m_cities#index")
    end


    it "routes to #show" do
      expect(:get => "/m_cities/1").to route_to("m_cities#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/m_cities").to route_to("m_cities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/m_cities/1").to route_to("m_cities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/m_cities/1").to route_to("m_cities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/m_cities/1").to route_to("m_cities#destroy", :id => "1")
    end

  end
end

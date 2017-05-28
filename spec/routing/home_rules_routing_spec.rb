require "rails_helper"

RSpec.describe HomeRulesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/home_rules").to route_to("home_rules#index")
    end


    it "routes to #show" do
      expect(:get => "/home_rules/1").to route_to("home_rules#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/home_rules").to route_to("home_rules#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/home_rules/1").to route_to("home_rules#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/home_rules/1").to route_to("home_rules#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/home_rules/1").to route_to("home_rules#destroy", :id => "1")
    end

  end
end

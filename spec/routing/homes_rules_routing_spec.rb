require "rails_helper"

RSpec.describe HomesRulesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/homes_rules").to route_to("homes_rules#index")
    end


    it "routes to #show" do
      expect(:get => "/homes_rules/1").to route_to("homes_rules#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/homes_rules").to route_to("homes_rules#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/homes_rules/1").to route_to("homes_rules#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/homes_rules/1").to route_to("homes_rules#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/homes_rules/1").to route_to("homes_rules#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe MPrefsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/m_prefs").to route_to("m_prefs#index")
    end


    it "routes to #show" do
      expect(:get => "/m_prefs/1").to route_to("m_prefs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/m_prefs").to route_to("m_prefs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/m_prefs/1").to route_to("m_prefs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/m_prefs/1").to route_to("m_prefs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/m_prefs/1").to route_to("m_prefs#destroy", :id => "1")
    end

  end
end

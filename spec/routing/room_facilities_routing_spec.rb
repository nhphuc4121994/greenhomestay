require "rails_helper"

RSpec.describe RoomFacilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/room_facilities").to route_to("room_facilities#index")
    end


    it "routes to #show" do
      expect(:get => "/room_facilities/1").to route_to("room_facilities#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/room_facilities").to route_to("room_facilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/room_facilities/1").to route_to("room_facilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/room_facilities/1").to route_to("room_facilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/room_facilities/1").to route_to("room_facilities#destroy", :id => "1")
    end

  end
end

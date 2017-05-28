require "rails_helper"

RSpec.describe BedTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bed_types").to route_to("bed_types#index")
    end


    it "routes to #show" do
      expect(:get => "/bed_types/1").to route_to("bed_types#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bed_types").to route_to("bed_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bed_types/1").to route_to("bed_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bed_types/1").to route_to("bed_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bed_types/1").to route_to("bed_types#destroy", :id => "1")
    end

  end
end

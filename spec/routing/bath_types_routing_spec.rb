require "rails_helper"

RSpec.describe BathTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bath_types").to route_to("bath_types#index")
    end


    it "routes to #show" do
      expect(:get => "/bath_types/1").to route_to("bath_types#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bath_types").to route_to("bath_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bath_types/1").to route_to("bath_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bath_types/1").to route_to("bath_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bath_types/1").to route_to("bath_types#destroy", :id => "1")
    end

  end
end

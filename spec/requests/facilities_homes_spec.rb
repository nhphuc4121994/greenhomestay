require 'rails_helper'

RSpec.describe "FacilitiesHomes", type: :request do
  describe "GET /facilities_homes" do
    it "works! (now write some real specs)" do
      get facilities_homes_path
      expect(response).to have_http_status(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "HomeFacilities", type: :request do
  describe "GET /home_facilities" do
    it "works! (now write some real specs)" do
      get home_facilities_path
      expect(response).to have_http_status(200)
    end
  end
end

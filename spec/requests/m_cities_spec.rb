require 'rails_helper'

RSpec.describe "MCities", type: :request do
  describe "GET /m_cities" do
    it "works! (now write some real specs)" do
      get m_cities_path
      expect(response).to have_http_status(200)
    end
  end
end

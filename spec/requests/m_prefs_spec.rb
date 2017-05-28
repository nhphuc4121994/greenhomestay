require 'rails_helper'

RSpec.describe "MPrefs", type: :request do
  describe "GET /m_prefs" do
    it "works! (now write some real specs)" do
      get m_prefs_path
      expect(response).to have_http_status(200)
    end
  end
end

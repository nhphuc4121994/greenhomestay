require 'rails_helper'

RSpec.describe "BathTypes", type: :request do
  describe "GET /bath_types" do
    it "works! (now write some real specs)" do
      get bath_types_path
      expect(response).to have_http_status(200)
    end
  end
end

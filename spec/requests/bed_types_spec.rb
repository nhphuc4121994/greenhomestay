require 'rails_helper'

RSpec.describe "BedTypes", type: :request do
  describe "GET /bed_types" do
    it "works! (now write some real specs)" do
      get bed_types_path
      expect(response).to have_http_status(200)
    end
  end
end

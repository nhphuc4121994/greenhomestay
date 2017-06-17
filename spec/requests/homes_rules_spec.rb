require 'rails_helper'

RSpec.describe "HomesRules", type: :request do
  describe "GET /homes_rules" do
    it "works! (now write some real specs)" do
      get homes_rules_path
      expect(response).to have_http_status(200)
    end
  end
end

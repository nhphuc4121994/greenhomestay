require 'rails_helper'

RSpec.describe "HomeRules", type: :request do
  describe "GET /home_rules" do
    it "works! (now write some real specs)" do
      get home_rules_path
      expect(response).to have_http_status(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "CustomerPortals", type: :request do
  describe "GET /customer_portals" do
    it "works! (now write some real specs)" do
      get customer_portals_path
      expect(response).to have_http_status(200)
    end
  end
end

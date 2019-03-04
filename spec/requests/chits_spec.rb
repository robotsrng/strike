require 'rails_helper'

RSpec.describe "Chits", type: :request do
  describe "GET /chits" do
    it "works! (now write some real specs)" do
      get chits_path
      expect(response).to have_http_status(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "StockParts", type: :request do
  describe "GET /stock_parts" do
    it "works! (now write some real specs)" do
      get stock_parts_path
      expect(response).to have_http_status(200)
    end
  end
end

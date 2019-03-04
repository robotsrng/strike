require 'rails_helper'

RSpec.describe "SupplierParts", type: :request do
  describe "GET /supplier_parts" do
    it "works! (now write some real specs)" do
      get supplier_parts_path
      expect(response).to have_http_status(200)
    end
  end
end

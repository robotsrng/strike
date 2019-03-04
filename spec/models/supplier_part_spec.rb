require 'rails_helper'

RSpec.describe SupplierPart, type: :model do
  it 'is valid with valid attributes' do
    expect(create(:supplier_part)).to be_valid
  end
end

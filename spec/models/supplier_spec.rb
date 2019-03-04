require 'rails_helper'

RSpec.describe Supplier, type: :model do
  it 'is valid with valid attributes' do
    expect(create(:supplier)).to be_valid
  end
end

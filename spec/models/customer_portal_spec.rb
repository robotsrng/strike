require 'rails_helper'

RSpec.describe CustomerPortal, type: :model do
  it 'is valid with valid attributes' do
    expect(create(:customer_portal)).to be_valid
  end
end

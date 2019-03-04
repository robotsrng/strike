require 'rails_helper'

RSpec.describe StockPart, type: :model do
  it 'is valid with valid attributes' do
    expect(create(:stock_part)).to be_valid
  end
end

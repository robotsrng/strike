require 'rails_helper'

RSpec.describe Chit, type: :model do
  it 'is valid with valid attributes' do
    expect(create(:chit)).to be_valid
  end
  # it 'is not valid without a stock_part'
  # it 'is not valid without a description'
  # it 'is not valid without a quantity'
  # pending 'add some examples to (or delete) #{__FILE__}'
end

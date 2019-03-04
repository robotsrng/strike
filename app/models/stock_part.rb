class StockPart < ApplicationRecord
  belongs_to :customer_portal
  has_many :chits
end

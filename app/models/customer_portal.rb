class CustomerPortal < ApplicationRecord
  has_many :users
  has_many :suppliers
  has_many :stock_parts
  has_many :chits, through: :stock_parts
end

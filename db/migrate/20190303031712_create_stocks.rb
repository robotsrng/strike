class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :part_number
      t.string :name
      t.text :description
      t.string :category_code
      t.money :supplier_cost
      t.integer :minimum_qty
      t.integer :maximum_qty
      t.integer :restock_to_level
      t.string[] :stock_links
      t.money :contract_price
      t.text :user_history
      t.text :notes
      t.belongs_to :customer_portal, foreign_key: true
      t.has_many :chits

      t.timestamps
    end
  end
end

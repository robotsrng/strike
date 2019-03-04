class CreateStockParts < ActiveRecord::Migration[5.2]
  def change
    create_table :stock_parts do |t|
      t.string :part_number
      t.string :name
      t.text :description
      t.string :category_code
      t.decimal :stock_cost, precision: 2
      t.integer :minimum_qty
      t.integer :maximum_qty
      t.integer :restock_to_level
      t.string :stock_links, array: true
      t.decimal :contract_price, precision: 2
      t.text :user_history
      t.text :notes
      t.belongs_to :customer_portal, foreign_key: true

      t.timestamps
    end
  end
end

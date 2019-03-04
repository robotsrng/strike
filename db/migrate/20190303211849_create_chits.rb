class CreateChits < ActiveRecord::Migration[5.2]
  def change
    create_table :chits do |t|
      t.integer :quantity
      t.integer :type_code
      t.decimal :product_cost, precision: 2
      t.text :description
      t.text :notes
      t.text :history
      t.belongs_to :stock_part, foreign_key: true

      t.timestamps
    end
  end
end

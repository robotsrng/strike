class CreateChits < ActiveRecord::Migration[5.2]
  def change
    create_table :chits do |t|
      t.integer :quantity
      t.integer :type_code
      t.money :product_cost
      t.text :description
      t.text :notes
      t.text :history
      t.belongs_to :stock, foreign_key: true

      t.timestamps
    end
  end
end

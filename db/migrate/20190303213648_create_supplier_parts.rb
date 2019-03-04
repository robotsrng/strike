class CreateSupplierParts < ActiveRecord::Migration[5.2]
  def change
    create_table :supplier_parts do |t|
      t.string :part_number
      t.string :name
      t.text :description
      t.string :category_code
      t.decimal :supplier_cost
      t.text :history
      t.belongs_to :supplier, foreign_key: true

      t.timestamps
    end
  end
end

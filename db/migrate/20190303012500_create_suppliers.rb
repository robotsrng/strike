class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :supplier_code
      t.text :address
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end

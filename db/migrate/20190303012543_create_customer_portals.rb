class CreateCustomerPortals < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_portals do |t|
      t.string :company_name
      t.string :company_phone
      t.string :company_email
      t.string :company_fax
      t.string :company_website
      t.has_many :user
      t.has_many :suppliers
      t.has_many :stock_parts
      t.has_many_through :stock_chits

      t.timestamps
    end
  end
end

class CreateCustomerPortals < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_portals do |t|
      t.string :company_name
      t.string :company_phone
      t.string :company_email
      t.string :company_fax
      t.string :company_website

      t.timestamps
    end
  end
end

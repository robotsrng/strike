json.extract! supplier, :id, :name, :supplier_code, :address, :phone, :fax, :email, :website, :has_many, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)

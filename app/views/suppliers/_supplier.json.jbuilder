json.extract! supplier, :id, :name, :supplier_code, :address, :phone, :fax, :email, :website, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)

json.extract! supplier_part, :id, :part_number, :name, :description, :category_code, :supplier_cost, :history, :supplier_id, :created_at, :updated_at
json.url supplier_part_url(supplier_part, format: :json)

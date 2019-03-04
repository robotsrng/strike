json.extract! stock_part, :id, :part_number, :name, :description, :category_code, :supplier_cost, :minimum_qty, :maximum_qty, :restock_to_level, :stock_links, :contract_price, :user_history, :notes, :customer_portal_id, :created_at, :updated_at
json.url stock_part_url(stock_part, format: :json)

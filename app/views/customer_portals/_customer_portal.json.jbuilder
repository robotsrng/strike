json.extract! customer_portal, :id, :company_name, :company_phone, :company_email, :company_fax, :company_website, :created_at, :updated_at
json.url customer_portal_url(customer_portal, format: :json)

json.extract! sale, :id, :company, :address, :status, :discount, :vat, :created_at, :updated_at
json.url sale_url(sale, format: :json)

json.extract! product, :id, :item_code, :description, :unit_price, :created_at, :updated_at
json.url product_url(product, format: :json)

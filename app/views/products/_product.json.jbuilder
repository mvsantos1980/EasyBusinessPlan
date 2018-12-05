json.extract! product, :id, :description, :cost, :freightCost, :freightSale, :commission, :tax, :quantity, :profit, :created_at, :updated_at
json.url product_url(product, format: :json)

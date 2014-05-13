json.array!(@honey_orders) do |honey_order|
  json.extract! honey_order, :id, :user, :company, :tel, :amount, :price
  json.url honey_order_url(honey_order, format: :json)
end

json.array!(@egg_orders) do |egg_order|
  json.extract! egg_order, :id, :user_id, :egg_id, :company, :location, :daily_quantity, :price
  json.url egg_order_url(egg_order, format: :json)
end

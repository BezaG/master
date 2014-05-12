json.array!(@egg_orders) do |egg_order|
  json.extract! egg_order, :id, :user, :company, :tel, :location, :per_, :price, :daily_quantity
  json.url egg_order_url(egg_order, format: :json)
end

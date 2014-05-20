json.array!(@mushroom_orders) do |mushroom_order|
  json.extract! mushroom_order, :id, :user_id, :mushroom_id, :company, :location, :quantity, :price
  json.url mushroom_order_url(mushroom_order, format: :json)
end

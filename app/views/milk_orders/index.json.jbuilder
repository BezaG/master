json.array!(@milk_orders) do |milk_order|
  json.extract! milk_order, :id, :user_id, :milk_id, :company, :location, :daily_quantity, :price
  json.url milk_order_url(milk_order, format: :json)
end

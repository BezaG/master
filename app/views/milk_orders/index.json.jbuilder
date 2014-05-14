json.array!(@milk_orders) do |milk_order|
  json.extract! milk_order, :id, :user, :company, :tel, :location, :price, :milk_id
  json.url milk_order_url(milk_order, format: :json)
end

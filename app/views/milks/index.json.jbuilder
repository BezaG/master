json.array!(@milks) do |milk|
  json.extract! milk, :id, :user_id, :company, :location, :daily_quantity, :condition, :price, :reciept
  json.url milk_url(milk, format: :json)
end

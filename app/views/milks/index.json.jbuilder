json.array!(@milks) do |milk|
  json.extract! milk, :id, :user, :company, :tel, :location, :condition, :price, :reciept
  json.url milk_url(milk, format: :json)
end

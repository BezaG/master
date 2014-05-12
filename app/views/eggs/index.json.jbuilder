json.array!(@eggs) do |egg|
  json.extract! egg, :id, :user, :company, :tel, :location, :type, :daily_quantity, :per_, :price, :reciept
  json.url egg_url(egg, format: :json)
end

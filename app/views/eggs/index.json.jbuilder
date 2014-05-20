json.array!(@eggs) do |egg|
  json.extract! egg, :id, :user_id, :company, :location, :type_of_egg, :daily_quantity, :price, :reciept
  json.url egg_url(egg, format: :json)
end

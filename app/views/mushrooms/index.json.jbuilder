json.array!(@mushrooms) do |mushroom|
  json.extract! mushroom, :id, :user_id, :company, :location, :day_of_supply, :quantity, :price, :reciept
  json.url mushroom_url(mushroom, format: :json)
end

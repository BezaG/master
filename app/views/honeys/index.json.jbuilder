json.array!(@honeys) do |honey|
  json.extract! honey, :id, :user_id, :company, :location, :honey_type, :amount, :condition, :price, :reciept
  json.url honey_url(honey, format: :json)
end

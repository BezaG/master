json.array!(@honeys) do |honey|
  json.extract! honey, :id, :user, :company, :tel, :honey_type, :amount, :price, :condition, :reciept
  json.url honey_url(honey, format: :json)
end

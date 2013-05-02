json.array!(@business_masters) do |business_master|
  json.extract! business_master, :business_name
  json.url business_master_url(business_master, format: :json)
end
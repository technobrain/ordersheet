json.array!(@business_masters) do |business_master|
  json.extract! business_master, :project_cd, :business_cd, :business_name
  json.url business_master_url(business_master, format: :json)
end
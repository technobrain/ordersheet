json.array!(@payment_site_masters) do |payment_site_master|
  json.extract! payment_site_master, :payment_site_name
  json.url payment_site_master_url(payment_site_master, format: :json)
end
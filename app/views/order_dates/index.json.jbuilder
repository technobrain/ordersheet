json.array!(@order_dates) do |order_date|
  json.extract! order_date, :order_id, :order_date
  json.url order_date_url(order_date, format: :json)
end
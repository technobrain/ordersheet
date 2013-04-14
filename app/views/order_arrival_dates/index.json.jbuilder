json.array!(@order_arrival_dates) do |order_arrival_date|
  json.extract! order_arrival_date, :order_no, :detail_no, :arrival_date
  json.url order_arrival_date_url(order_arrival_date, format: :json)
end
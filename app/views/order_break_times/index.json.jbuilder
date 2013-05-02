json.array!(@order_break_times) do |order_break_time|
  json.extract! order_break_time, :order_id, :break_start_time, :break_end_time
  json.url order_break_time_url(order_break_time, format: :json)
end
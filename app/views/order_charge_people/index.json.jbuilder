json.array!(@order_charge_people) do |order_charge_person|
  json.extract! order_charge_person, :order_id, :employee_id, :basic_amount, :time_limit_lower, :time_limit_upper, :deduction_bid, :overtime_bid
  json.url order_charge_person_url(order_charge_person, format: :json)
end
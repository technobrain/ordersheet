json.array!(@position_masters) do |position_master|
  json.extract! position_master, :position_name, :position_expenses
  json.url position_master_url(position_master, format: :json)
end
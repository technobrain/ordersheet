json.array!(@order_infos) do |order_info|
  json.extract! order_info, :company_id, :unit_id, :author, :revenue_unit_id, :project_id, :business_id, :contract_start_date, :contract_end_date, :work_place, :income_date, :payment_site_id, :work_start_date, :work_end_date, :other, :general_receipt_date, :general_order_date, :general_order_no, :general_other
  json.url order_info_url(order_info, format: :json)
end
json.array!(@employee_masters) do |employee_master|
  json.extract! employee_master, :employee_cd, :employee_name, :employee_name_kana, :position_id, :unit_id, :email_address1, :emai_address2, :postal_cd, :address1, :address2, :tel_no, :fax_no, :mobile_tel_no1, :mobile_tel_no2, :emergency_tel_no, :birth_date, :station, :birth_place, :education_level, :other
  json.url employee_master_url(employee_master, format: :json)
end
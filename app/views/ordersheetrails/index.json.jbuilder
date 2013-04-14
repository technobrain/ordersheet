json.array!(@ordersheetrails) do |ordersheetrail|
  json.extract! ordersheetrail, :g, :scaffold, :ordersheet, :company_cd, :reg_date, :mod_date, :company_name, :string, :division_name, :charge_person, :contact, :tel_no
  json.url ordersheetrail_url(ordersheetrail, format: :json)
end
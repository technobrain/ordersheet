json.array!(@company_masters) do |company_master|
  json.extract! company_master, :company_cd, :company_name, :division_name, :charge_person, :contact, :tel_no
  json.url company_master_url(company_master, format: :json)
end
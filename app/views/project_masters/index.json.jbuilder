json.array!(@project_masters) do |project_master|
  json.extract! project_master, :company_id, :project_name
  json.url project_master_url(project_master, format: :json)
end
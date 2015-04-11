class CompanyMaster < ActiveRecord::Base
  has_many :project_master
end

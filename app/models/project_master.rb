class ProjectMaster < ActiveRecord::Base
  belongs_to :company_master, foreign_key: :company_id
  has_many :order_info
end

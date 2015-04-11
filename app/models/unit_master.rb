class UnitMaster < ActiveRecord::Base
  has_many :order_info
  has_many :employee_master
end

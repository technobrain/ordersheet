class BusinessMaster < ActiveRecord::Base
  has_many :order_info, foreign_key: :business_id
end

class EmployeeMaster < ActiveRecord::Base
   validates_presence_of :employee_cd, :employee_name, :employee_name_kana, :position_id, :unit_id,
       :message => 'が入力されていません。'
  belongs_to :position_master, foreign_key: :position_id
  belongs_to :unit_master, foreign_key: :unit_id
end

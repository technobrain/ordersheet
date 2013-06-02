class EmployeeMaster < ActiveRecord::Base
   validates_presence_of :employee_cd, :employee_name, :employee_name_kana, :position_id, :unit_id,
       :message => 'が入力されていません。'
end

class OrderInfo < ActiveRecord::Base
   has_many :order_charge_people, :foreign_key =>  "order_id", :dependent => :destroy
   has_many :order_break_times, :foreign_key =>  "order_id", :dependent => :destroy
   has_many :order_dates, :foreign_key =>  "order_id", :dependent => :destroy

   accepts_nested_attributes_for :order_charge_people ,allow_destroy: true
  #     :reject_if => lambda{ |attrs| attrs[:order_id].blank? }
   accepts_nested_attributes_for :order_break_times ,allow_destroy: true
   accepts_nested_attributes_for :order_dates ,allow_destroy: true

   HUMANIZED_KEY_NAMES = {"company_id" => "企業名",
                          "unit_id" => "所属",
                          "revenue_unit_id" => "売上げ計上事業部",
                          "project_id" => "案件名",
                          "business_id" => "業務名"}

   validates_presence_of :company_id, :unit_id, :revenue_unit_id, :project_id, :business_id, :contract_start_date, :contract_end_date, :income_date, :payment_site_id, :work_start_date, :work_end_date, :message => 'が入力されていません。'
end

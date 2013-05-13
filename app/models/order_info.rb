class OrderInfo < ActiveRecord::Base
   has_many :order_charge_people, :foreign_key =>  "order_id"
   has_many :order_break_time, :foreign_key =>  "order_id"
   has_many :order_date, :foreign_key =>  "order_id"
   accepts_nested_attributes_for :order_charge_people ,allow_destroy: true

end

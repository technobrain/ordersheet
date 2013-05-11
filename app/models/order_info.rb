class OrderInfo < ActiveRecord::Base
   has_many :order_charge_people, :foreign_key =>  "order_id", :class_name => "OrderChargePerson"
   has_many :order_break_times, :foreign_key =>  "order_id"
   has_many :order_dates, :foreign_key =>  "order_id"
   accepts_nested_attributes_for :order_charge_people ,allow_destroy: true

end

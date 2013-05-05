class OrderInfo < ActiveRecord::Base
   has_many :order_charge_persons, :foreign_key =>  "order_id"
   has_many :order_break_times, :foreign_key =>  "order_id"
   has_many :order_dates, :foreign_key =>  "order_id"
end

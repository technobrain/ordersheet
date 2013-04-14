class CreateOrderBreakTimes < ActiveRecord::Migration
  def change
    create_table :order_break_times do |t|
      t.integer :order_no
      t.integer :detail_no
      t.time :break_time

      t.timestamps
    end
  end
end

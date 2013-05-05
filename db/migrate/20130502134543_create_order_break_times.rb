class CreateOrderBreakTimes < ActiveRecord::Migration
  def change
    create_table :order_break_times do |t|
      t.integer :order_id
      t.time :break_start_time
      t.time :break_end_time

      t.timestamps
    end
  end
end

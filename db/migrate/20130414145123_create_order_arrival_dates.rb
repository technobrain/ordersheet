class CreateOrderArrivalDates < ActiveRecord::Migration
  def change
    create_table :order_arrival_dates do |t|
      t.integer :order_no
      t.integer :detail_no
      t.date :arrival_date

      t.timestamps
    end
  end
end

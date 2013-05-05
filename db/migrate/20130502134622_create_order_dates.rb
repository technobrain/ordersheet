class CreateOrderDates < ActiveRecord::Migration
  def change
    create_table :order_dates do |t|
      t.integer :order_id
      t.date :order_date

      t.timestamps
    end
  end
end

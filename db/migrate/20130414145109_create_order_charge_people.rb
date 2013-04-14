class CreateOrderChargePeople < ActiveRecord::Migration
  def change
    create_table :order_charge_people do |t|
      t.integer :order_no
      t.string :employee_cd
      t.integer :basic_amount
      t.integer :time_limit_lower
      t.integer :time_limit_upper
      t.integer :deduction_bid
      t.integer :overtime_bid

      t.timestamps
    end
  end
end

class CreateOrderInfos < ActiveRecord::Migration
  def change
    create_table :order_infos do |t|
      t.integer :order_no
      t.integer :department_cd
      t.string :author
      t.integer :revenue_unit_code
      t.integer :project_cd
      t.integer :business_cd
      t.date :contract_start_date
      t.date :contract_end_date
      t.string :work_place
      t.date :income_date
      t.integer :payment_site
      t.time :work_start_date
      t.time :work_end_date
      t.text :other
      t.date :general_receipt_date
      t.date :general_order_date
      t.integer :general_order_no
      t.text :general_other

      t.timestamps
    end
  end
end

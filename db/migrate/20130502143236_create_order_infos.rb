class CreateOrderInfos < ActiveRecord::Migration
  def change
    create_table :order_infos do |t|
      t.integer :company_id
      t.integer :unit_id
      t.string :author
      t.integer :revenue_unit_id
      t.integer :project_id
      t.integer :business_id
      t.date :contract_start_date
      t.date :contract_end_date
      t.string :work_place
      t.date :income_date
      t.integer :payment_site_id
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

class CreatePaymentSiteMasters < ActiveRecord::Migration
  def change
    create_table :payment_site_masters do |t|
      t.integer :payment_site_code
      t.string :payment_site_name

      t.timestamps
    end
  end
end

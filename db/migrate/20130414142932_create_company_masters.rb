class CreateCompanyMasters < ActiveRecord::Migration
  def change
    create_table :company_masters do |t|
      t.integer :company_cd
      t.string :company_name
      t.string :division_name
      t.string :charge_person
      t.string :contact
      t.string :tel_no

      t.timestamps
    end
  end
end

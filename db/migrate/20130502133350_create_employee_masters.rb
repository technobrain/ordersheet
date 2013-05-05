class CreateEmployeeMasters < ActiveRecord::Migration
  def change
    create_table :employee_masters do |t|
      t.string :employee_cd
      t.string :employee_name
      t.string :employee_name_kana
      t.integer :position_id
      t.integer :unit_id
      t.string :email_address1
      t.string :emai_address2
      t.string :postal_cd
      t.string :address1
      t.string :address2
      t.string :tel_no
      t.string :fax_no
      t.string :mobile_tel_no1
      t.string :mobile_tel_no2
      t.string :emergency_tel_no
      t.date :birth_date
      t.string :station
      t.string :birth_place
      t.string :education_level
      t.text :other

      t.timestamps
    end
  end
end

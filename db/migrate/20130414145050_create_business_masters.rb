class CreateBusinessMasters < ActiveRecord::Migration
  def change
    create_table :business_masters do |t|
      t.integer :project_cd
      t.integer :business_cd
      t.string :business_name

      t.timestamps
    end
  end
end

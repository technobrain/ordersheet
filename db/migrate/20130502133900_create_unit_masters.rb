class CreateUnitMasters < ActiveRecord::Migration
  def change
    create_table :unit_masters do |t|
      t.string :unit_name

      t.timestamps
    end
  end
end

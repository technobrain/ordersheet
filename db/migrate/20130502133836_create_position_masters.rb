class CreatePositionMasters < ActiveRecord::Migration
  def change
    create_table :position_masters do |t|
      t.string :position_name
      t.integer :position_expenses

      t.timestamps
    end
  end
end

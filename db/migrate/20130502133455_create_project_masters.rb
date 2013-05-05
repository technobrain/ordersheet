class CreateProjectMasters < ActiveRecord::Migration
  def change
    create_table :project_masters do |t|
      t.integer :company_id
      t.string :project_name

      t.timestamps
    end
  end
end

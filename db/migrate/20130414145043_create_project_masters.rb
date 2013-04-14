class CreateProjectMasters < ActiveRecord::Migration
  def change
    create_table :project_masters do |t|
      t.integer :project_cd
      t.string :project_name

      t.timestamps
    end
  end
end

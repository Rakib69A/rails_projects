class CreateStudentsProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :students_projects do |t|
      t.references :student, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end

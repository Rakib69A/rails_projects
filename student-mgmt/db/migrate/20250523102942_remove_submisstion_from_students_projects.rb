class RemoveSubmisstionFromStudentsProjects < ActiveRecord::Migration[8.0]
  def change
    remove_column :students_projects, :submisstion_data, :date
  end
end

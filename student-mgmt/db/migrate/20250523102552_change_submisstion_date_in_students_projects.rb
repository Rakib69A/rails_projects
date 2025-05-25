class ChangeSubmisstionDateInStudentsProjects < ActiveRecord::Migration[8.0]
  def change
    change_column :students_projects, :submisstion_date, :ending_date
  end
end

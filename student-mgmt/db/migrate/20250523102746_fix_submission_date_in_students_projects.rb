class FixSubmissionDateInStudentsProjects < ActiveRecord::Migration[8.0]
  def change
    remove_column :students_projects, :submisstion_date, :date
    add_column :students_projects, :submission_date, :date
  end
end

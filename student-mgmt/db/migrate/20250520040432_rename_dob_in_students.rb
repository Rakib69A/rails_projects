class RenameDobInStudents < ActiveRecord::Migration[8.0]
  def change
    rename_column :students, :dob, :date_of_birth
  end
end

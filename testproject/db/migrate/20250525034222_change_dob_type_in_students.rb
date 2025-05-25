class ChangeDobTypeInStudents < ActiveRecord::Migration[8.0]
  def change
    change_column :students, :dob, :date
  end
end

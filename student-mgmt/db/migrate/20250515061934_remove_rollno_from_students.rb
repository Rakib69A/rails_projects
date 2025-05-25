class RemoveRollnoFromStudents < ActiveRecord::Migration[8.0]
  def change
    remove_column :students, :rollno, :integer
  end
end

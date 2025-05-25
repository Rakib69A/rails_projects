class RemoveDateOfBirthOnStudents < ActiveRecord::Migration[8.0]
  def change
    remove_column :students, :date_of_birth
  end
end

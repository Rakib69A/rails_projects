class AddColumnToStudents < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :address, :string
    add_column :students, :dob, :string
    add_column :students, :age, :integer
  end
end

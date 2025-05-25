class PhoneToStudents < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :phone, :string
    add_column :students, :rollno, :integer
  end
end

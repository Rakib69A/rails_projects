class AddAttrToStudents < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :gender, :string
    add_column :students, :nationality, :string
  end
end

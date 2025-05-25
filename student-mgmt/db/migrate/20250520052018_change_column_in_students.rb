class ChangeColumnInStudents < ActiveRecord::Migration[8.0]
  def change
    change_column :students, :gender, :integer
  end
end

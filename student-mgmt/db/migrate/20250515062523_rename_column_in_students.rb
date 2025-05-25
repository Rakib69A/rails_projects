class RenameColumnInStudents < ActiveRecord::Migration[8.0]
  def change
    rename_column :students, :address, :city
  end
end

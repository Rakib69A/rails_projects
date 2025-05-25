class RemoveNationalityFromStudents < ActiveRecord::Migration[8.0]
  def change
    remove_column :students, :nationality, :string
  end
end

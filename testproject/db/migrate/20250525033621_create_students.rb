class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :date_of_birth

      t.timestamps
    end
  end
end

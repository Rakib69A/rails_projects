class CreateSubDdemos < ActiveRecord::Migration[8.0]
  def change
    create_table :sub_ddemos do |t|
      t.string :title
      t.references :ddemo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

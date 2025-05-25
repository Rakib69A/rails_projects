class RemoveCommnetableTypeAndIdFromComments < ActiveRecord::Migration[8.0]
  def change
    remove_column :comments, :commnetable_type, :string
    remove_column :comments, :commnetable_id, :integer
    add_column :comments, :commentable_type, :string
    add_column :comments, :commentable_id, :integer
  end
end

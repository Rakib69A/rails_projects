class AddPolymorphicAttrToComments < ActiveRecord::Migration[8.0]
  def change
    add_column :comments, :commnetable_type, :string
    add_column :comments, :commnetable_id, :integer
    remove_column :comments, :article_id, :integer
    remove_column :comments, :event_id, :integer
  end
end

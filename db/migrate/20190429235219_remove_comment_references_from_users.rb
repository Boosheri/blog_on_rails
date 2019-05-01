class RemoveCommentReferencesFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :comment_id, :foreign_key
  end
end
class ChangeCommentNameToTextcomment < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :comment, :textcomment
  end
end

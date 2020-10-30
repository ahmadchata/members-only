class RemoveUserIdFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :posts, :user_id
  end
end

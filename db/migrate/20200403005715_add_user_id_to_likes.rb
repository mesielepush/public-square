class AddUserIdToLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :user_id, :integer
  end
end

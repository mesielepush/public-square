class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :counter
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end

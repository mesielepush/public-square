# frozen_string_literal: true

class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :post_id
      t.integer :result

      t.timestamps
    end
  end
end

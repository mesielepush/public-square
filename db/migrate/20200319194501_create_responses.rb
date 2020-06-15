# frozen_string_literal: true

class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.string :content
      t.integer :post_id

      t.timestamps
    end
  end
end

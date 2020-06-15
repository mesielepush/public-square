# frozen_string_literal: true

class AddAvatarToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :avatar, :string
  end
end

# frozen_string_literal: true

class AddUserIdToListeners < ActiveRecord::Migration[6.0]
  def change
    add_column :listeners, :user_id, :integer
  end
end

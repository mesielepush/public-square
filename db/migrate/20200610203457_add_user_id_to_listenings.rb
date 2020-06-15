# frozen_string_literal: true

class AddUserIdToListenings < ActiveRecord::Migration[6.0]
  def change
    add_column :listenings, :user_id, :integer
  end
end

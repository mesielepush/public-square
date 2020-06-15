# frozen_string_literal: true

class AddDescriptionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :description, :string, default: 'Describe yourself...'
  end
end

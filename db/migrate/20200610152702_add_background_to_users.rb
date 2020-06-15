# frozen_string_literal: true

class AddBackgroundToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :background, :string
  end
end

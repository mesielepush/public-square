# frozen_string_literal: true

class ChangeBackground < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :background, :string, default: 'https://i.imgur.com/moRYtBi.png'
  end
end

# frozen_string_literal: true

class CreateListeners < ActiveRecord::Migration[6.0]
  def change
    create_table :listeners do |t|
      t.string :other_id

      t.timestamps
    end
  end
end

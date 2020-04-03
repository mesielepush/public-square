class CreateListenings < ActiveRecord::Migration[6.0]
  def change
    create_table :listenings do |t|
      t.string :other_id

      t.timestamps
    end
  end
end

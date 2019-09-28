class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :fixture, foreign_key: true
      t.references :event_type, foreign_key: true
      t.integer :minute
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true
      t.references :other_player, foreign_key: true, :null => true

      t.timestamps
    end
  end
end

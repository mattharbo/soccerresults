class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.references :team, foreign_key: true
      t.references :fixture, foreign_key: true
      t.integer :possession
      t.integer :tot_shoot
      t.integer :on_target_shoot
      t.integer :offside

      t.timestamps
    end
  end
end

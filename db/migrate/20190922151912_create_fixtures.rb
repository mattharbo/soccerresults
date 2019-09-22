class CreateFixtures < ActiveRecord::Migration[5.2]
  def change
    create_table :fixtures do |t|
      t.string :status
      t.date :date
      t.time :time
      t.references :home_team
      t.references :away_team
      t.string :final_score
      t.references :stadium, foreign_key: true
      t.references :season, foreign_key: true
      t.integer :stage

      t.timestamps
    end
  end
end

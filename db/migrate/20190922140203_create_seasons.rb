class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.string :year
      t.references :championship, foreign_key: true

      t.timestamps
    end
  end
end

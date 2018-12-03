class CreateOpenings < ActiveRecord::Migration[5.2]
  def change
    create_table :openings do |t|
      t.integer :instrument_id
      t.integer :band_id
      t.integer :musician_id

      t.timestamps
    end
  end
end

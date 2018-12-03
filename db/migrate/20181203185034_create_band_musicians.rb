class CreateBandMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :band_musicians do |t|
      t.integer :band_id
      t.integer :musician_id

      t.timestamps
    end
  end
end

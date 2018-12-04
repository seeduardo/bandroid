class CreateMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :musicians do |t|
      t.string :stage_name
      t.string :location
      t.string :bio
      t.integer :user_id
    end
  end
end

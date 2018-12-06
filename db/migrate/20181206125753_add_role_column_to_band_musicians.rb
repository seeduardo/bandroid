class AddRoleColumnToBandMusicians < ActiveRecord::Migration[5.2]
  def change
    add_column :band_musicians, :role, :string
    add_column :band_musicians, :filled, :boolean
  end
end

class ChangeColumnNameForArtists < ActiveRecord::Migration[5.1]
  def change
    rename_column :artists, :artist_name, :name
    rename_column :artists, :artist_image_path, :image_path
  end
end

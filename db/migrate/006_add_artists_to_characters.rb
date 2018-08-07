class AddArtistsToCharacters < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :artist_id, :integer
  end
end

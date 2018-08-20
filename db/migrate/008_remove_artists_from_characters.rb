class RemoveArtistsFromCharacters < ActiveRecord::Migration[4.2]
  def change
    remove_column :characters, :artist_id, :integer
  end
end

class RemoveGenreIdFromShows < ActiveRecord::Migration[4.2]
  def change
    remove_column :shows, :genre_id
  end
end

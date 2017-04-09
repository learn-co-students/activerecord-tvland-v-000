class RemoveGenresFromShows < ActiveRecord::Migration

  def change
    remove_column :shows, :genre_id
  end

end

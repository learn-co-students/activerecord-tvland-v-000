class RemoveGenreIdFromShows < ActiveRecord::Migration[5.1]

  def change
    remove_column :shows, :genre_id, :string
  end

end

class RemoveGenreIdFromShows < ActiveRecord::Migration[4.2]
  def change
    remove_column :shows, :genre_id, :integer
    add_column :shows, :genre, :string
  end
end
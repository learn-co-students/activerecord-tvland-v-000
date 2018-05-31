class AddGenreIdToShows < ActiveRecord::Migration[4.2]
  def change
    remove_column :shows, :genre, :string
    add_column :shows, :genre_id, :integer
  end
end
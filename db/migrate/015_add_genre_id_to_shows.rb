class AddGenreIdToShows < ActiveRecord::Migration[5.1]

  def change
    add_column :shows, :genre_id, :string
  end
  
end

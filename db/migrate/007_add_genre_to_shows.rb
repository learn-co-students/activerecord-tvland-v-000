class AddGenreToShows < ActiveRecord::Migration
  def change
    add_column :shows, :genre_id, :string
  end 
end 
class AddGenreToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :genre, :text
  end
end

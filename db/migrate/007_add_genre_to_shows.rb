class AddGenreToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :genre, :string
    add_column :shows, :call_letters, :string
  end
end

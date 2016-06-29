class AddGenreToShows < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :string
    add_column :shows, :network, :string
  end
end

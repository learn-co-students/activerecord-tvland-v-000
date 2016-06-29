class AddNameAndGenreToShows < ActiveRecord::Migration
  def change
    add_column :shows, :name, :string
    add_column :shows, :genre, :string
  end
end
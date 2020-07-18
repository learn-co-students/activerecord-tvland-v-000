class AddDayAndSeasonAndGenreToShows < ActiveRecord::Migration
  def change
    add_column :shows, :day, :string
    add_column :Shows, :season, :string
    add_column :shows, :genre, :string
  end
end

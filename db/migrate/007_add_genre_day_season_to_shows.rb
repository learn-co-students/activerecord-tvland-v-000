class AddGenreDaySeasonToShows < ActiveRecord::Migration[4.2]

  def change
    add_column :shows, :genre, :text
    add_column :shows, :day, :text
    add_column :shows, :season, :text
  end
end

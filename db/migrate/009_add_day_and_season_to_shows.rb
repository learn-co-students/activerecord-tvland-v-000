class AddDayAndSeasonToShows < ActiveRecord::Migration[4.2]
  add_column :shows, :day, :string
  add_column :shows, :season, :string
end

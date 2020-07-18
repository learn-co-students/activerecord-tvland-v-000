class AddSeasonToShows < ActiveRecord::Migration[4.2]
  add_column :shows, :season, :string
end

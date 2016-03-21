class AddSeasonToShows < ActiveRecord::Migration
  add_column :shows, :season, :string
end

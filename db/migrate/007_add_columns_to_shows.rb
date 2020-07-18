class AddColumnsToShows < ActiveRecord::Migration
  add_column :shows, :genre, :string
  add_column :shows, :day, :string
  add_column :shows, :season, :string
end

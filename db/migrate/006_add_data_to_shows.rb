class AddDataToShows < ActiveRecord::Migration

  add_column :shows, :day, :string
  add_column :shows, :season, :string
  add_column :shows, :genre, :string

end
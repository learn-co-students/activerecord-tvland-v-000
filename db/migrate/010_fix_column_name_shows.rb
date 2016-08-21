class FixColumnNameShows < ActiveRecord::Migration
  def change
    rename_column :shows, :genres, :genre
  end
end
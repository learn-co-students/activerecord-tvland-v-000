class AddAttributesToShows < ActiveRecord::Migration

  def change
    add_column :shows, :genre, :text
    add_column :shows, :day, :text
    add_column :shows, :season, :text
  end
end
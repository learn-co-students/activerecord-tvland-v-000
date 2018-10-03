class AddDataToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :day, :text
    add_column :shows, :season, :text
  end
end

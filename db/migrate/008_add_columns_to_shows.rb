class AddColumnsToShows < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :text
  end
end

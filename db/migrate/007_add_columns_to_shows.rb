class AddColumnsToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :day, :string
    add_column :shows, :genre, :string
    add_column :shows, :season, :string
  end
  
  def actors_list
    self.actors.full_name
  end
end
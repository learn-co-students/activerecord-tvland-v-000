class AddGenreToShows < ActiveRecord::Migration[5.1]
  
  def change
    add_column :shows, :genre, :text 
  end
  
end
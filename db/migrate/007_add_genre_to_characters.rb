class AddGenreToCharacters < ActiveRecord::Migration[5.1]
  
  def change
    add_column :characters, :genre_id, :integer
  end
  
end
class UpdateGenresColumn < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :string
    remove_column :shows, :genre_id
  end
end

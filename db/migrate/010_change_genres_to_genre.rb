class ChangeGenresToGenre < ActiveRecord::Migration
  def change
    remove_column :shows, :genres, :string
    add_column :shows, :genre, :string
  end
end

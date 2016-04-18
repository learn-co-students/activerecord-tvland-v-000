class AddToShows < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :string
    add_column :shows, :character_id, :integer
    add_column :shows, :day, :string
    add_column :shows, :season, :string
  end
end
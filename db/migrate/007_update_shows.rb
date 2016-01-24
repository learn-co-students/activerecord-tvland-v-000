#007_Update_shows.rb

class UpdateShows < ActiveRecord::Migration
  def change
    add_column :shows, :genre, :string
  end
end


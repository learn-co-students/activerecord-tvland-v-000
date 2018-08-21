class AddShowsToGenre < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :genre_id, :integer
  end
end
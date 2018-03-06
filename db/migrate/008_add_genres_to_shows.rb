class AddGenresToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :genres_id, :integer
  end
end

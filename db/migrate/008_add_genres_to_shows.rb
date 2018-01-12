class AddGenresToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :genres, :string
  end
end

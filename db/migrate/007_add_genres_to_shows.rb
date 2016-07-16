class AddGenresToShows < ActiveRecord::Migration
  def change
    add_column :genres, :shows, :string
  end
end

class AddGenreToShowsTable < ActiveRecord::Migration
  def change
    add_column :shows, :genres, :string
  end
end
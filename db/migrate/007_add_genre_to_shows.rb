#* Write a migration for the shows table. A show should have a name and a genre. MH


class AddGenreToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :genre, :string
  end
end

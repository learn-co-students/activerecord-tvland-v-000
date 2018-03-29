class AddGenreAndDayToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :genre, :string
    add_column :shows, :day, :string
  end
end

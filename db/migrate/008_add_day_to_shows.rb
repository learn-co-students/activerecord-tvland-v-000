class AddDayToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :day, :text
  end
end

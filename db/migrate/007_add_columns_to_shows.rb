class AddColumnsToShows < ActiveRecord::Migration
  def change
    change_table :shows do |t|
      t.string :day
      t.string :season
      t.string :genre
    end
  end
end
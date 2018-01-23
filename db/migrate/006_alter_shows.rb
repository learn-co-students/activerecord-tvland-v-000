class AlterShows < ActiveRecord::Migration
  def change
    change_table :shows do |s|
      s.string :genre
      s.string :day
      s.string :season
      s.integer :show_id
    end
  end
end

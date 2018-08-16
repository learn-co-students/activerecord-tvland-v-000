class AddDayToShow < ActiveRecord::Migration[4.2]
  def change 
    add_column :shows, :day, :text
    add_column :shows, :season, :text
    add_column :shows, :genre, :text
  end
end
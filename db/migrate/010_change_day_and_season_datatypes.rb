class ChangeDayAndSeasonDatatypes < ActiveRecord::Migration
  def change
    change_column :shows, :day, :string
    change_column :shows, :season, :string
  end
end

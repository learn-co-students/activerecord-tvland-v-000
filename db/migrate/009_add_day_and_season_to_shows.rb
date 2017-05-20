class AddDayAndSeasonToShows < ActiveRecord::Migration
  def change
    add_column :shows, :day, :datetime
    add_column :shows, :season, :string
  end
end

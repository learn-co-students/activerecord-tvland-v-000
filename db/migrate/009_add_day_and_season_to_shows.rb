# has data attributes (FAILED - 9) MH
class AddDayAndSeasonToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :day, :string
    add_column :shows, :season, :string
  end
end

class AddDaySeasonToShow < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :season, :string
    add_column :shows, :day, :string
  end
end

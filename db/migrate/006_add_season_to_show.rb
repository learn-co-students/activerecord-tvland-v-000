class AddSeasonToShow < ActiveRecord::Migration
  def change
    change_table :shows do |t|
      t.string :day
      t.string :season
    end
  end
end

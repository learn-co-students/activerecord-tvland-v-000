class AddDayAndSeasonToShows < ActiveRecord::Migration

    def change
        add_column :shows, :day, :season
    end
end
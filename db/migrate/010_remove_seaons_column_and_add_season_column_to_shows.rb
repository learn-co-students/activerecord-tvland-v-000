class RemoveSeaonsColumnAndAddSeasonColumnToShows < ActiveRecord::Migration
  def change
    remove_column :shows, :seaons
    add_column :shows, :season, :string
  end
end

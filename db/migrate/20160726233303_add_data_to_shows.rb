class AddDataToShows < ActiveRecord::Migration
  def change
    add_column :shows, :day, :string
    add_column :shows, :season, :string
  end
end

# community = Show.create(:name => "Community", :day => "Thursday", :season => "Winter")

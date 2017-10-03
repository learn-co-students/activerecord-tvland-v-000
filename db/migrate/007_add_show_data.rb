class AddShowData < ActiveRecord::Migration
  def change
    #community = Show.create(:name => "Community", :day => "Thursday", :season => "Winter")
    add_column :shows, :day, :string
    add_column :shows, :season, :string
    add_column :shows, :genre, :string
  end
end

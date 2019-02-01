class AddDataToShows < ActiveRecord::Migration[5.1]

  def change
    add_column :shows, :day, :string
    add_column :shows, :season, :string
  end

end

# it "has data attributes" do
#     #TODO: You'll need to create a new migration to add
#     #the necessary columns to the shows table
#     community = Show.create(:name => "Community", :day => "Thursday", :season => "Winter")
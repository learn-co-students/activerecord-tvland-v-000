#008_update_shows_again.rb

class UpdateShowsAgain < ActiveRecord::Migration
  def change
    add_column :shows, :day, :string
    add_column :shows, :season, :string
  end
end

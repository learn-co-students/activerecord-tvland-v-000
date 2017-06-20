class AddCharacterToShows < ActiveRecord::Migration
  def change
    add_column :shows, :character, :string
  end
end

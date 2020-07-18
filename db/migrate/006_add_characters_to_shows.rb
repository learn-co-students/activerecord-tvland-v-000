class AddCharactersToShows < ActiveRecord::Migration[5.1]

  def change
    add_column :shows, :characters, :string
  end
end

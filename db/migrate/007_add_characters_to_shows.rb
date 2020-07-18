class AddCharactersToShows < ActiveRecord::Migration

  def change
    change_table :shows do |t|
      t.string :characters
    end
  end

end
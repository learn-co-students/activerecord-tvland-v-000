class AddCharactersToActors < ActiveRecord::Migration
  def change
    add_column :actors, :character_id, :integer
  end
end
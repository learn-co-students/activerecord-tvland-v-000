class AddCharacterToActors < ActiveRecord::Migration[5.1]

  def change
    add_column :actors, :character_id, :integer
  end
end

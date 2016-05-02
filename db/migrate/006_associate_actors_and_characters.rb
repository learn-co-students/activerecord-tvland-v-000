class AssociateActorsAndCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :actor_id, :integer
    add_column :actors, :character_id, :integer
  end
end

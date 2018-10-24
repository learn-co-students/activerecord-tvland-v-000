class RemoveCharacterIdFromActors < ActiveRecord::Migration[4.2]
  def change
    remove_column :actors, :character_id
  end
end

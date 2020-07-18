class AddActorIdToCharacters < ActiveRecord::Migration

  def change
    add_column :characters, :actor_id, :ingteger
  end

end

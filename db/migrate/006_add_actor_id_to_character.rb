class AddActorIdToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :actor_id, :integer
  end
end

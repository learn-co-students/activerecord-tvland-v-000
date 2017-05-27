class AddActorIdToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :actor_id, :integer
  end
end

class AddActorToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :actor_id, :integer
  end
end

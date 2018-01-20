class AddActorIdToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :actor_id, :integer
  end
#could combine this and 007_add_genre
end

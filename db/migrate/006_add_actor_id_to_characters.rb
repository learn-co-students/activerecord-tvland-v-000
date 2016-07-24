class AddActorIdToCharacters < ActiveRecord::Migration
  def change
    add_foreign_key :characters, :actor_id , :integer
  end
end
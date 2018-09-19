class AddActorIdToCharacters < ActiveRecord::Migration[4.2]

  def change
     add_column :characters, :actor_id, :integer
    # , foreign_key: "actor_id" 
  end
end

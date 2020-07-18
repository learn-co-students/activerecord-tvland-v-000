class ActorIdInCharacters < ActiveRecord::Migration

def change

  remove_column :actors, :actor_id
  add_column :characters, :actor_id, :integer

end


end

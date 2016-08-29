class AddActorId < ActiveRecord::Migration 

def change
  add_column :actors, :actor_id, :integer
end

end

class CreateActorIdInCharacters < ActiveRecord::Migration[4.2]
  add_column :characters, :actor_id, :integer
end #class end

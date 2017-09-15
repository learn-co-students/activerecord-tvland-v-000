class AddActorIdToCharacter < ActiveRecord::Migration
    def change
        add_column :characters, :actor_id, :integer 
    end# of change
end# of class
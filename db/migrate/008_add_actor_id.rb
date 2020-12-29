
class AddActorId < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
    def change
  remove_column :characters, :actor_id, :integer
  add_column :characters, :actor, :string
  add_column :characters, :show, :string
    end
end

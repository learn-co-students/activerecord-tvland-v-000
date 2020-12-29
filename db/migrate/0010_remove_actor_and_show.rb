
class RemoveActorAndShow< ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
    def change
  add_column :characters, :actor_id, :integer
  remove_column :characters, :actor, :string
  remove_column :characters, :show, :string
    end
end

class DeleteActorIdFromActors < ActiveRecord::Migration
  def change
    remove_column :actors, :actor_id
  end
end

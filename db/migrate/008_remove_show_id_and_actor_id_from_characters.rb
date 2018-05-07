class RemoveShowIdAndActorIdFromCharacters < ActiveRecord::Migration[4.2]
  def change
    remove_column :characters, :show_id
    remove_column :characters, :actor_id
  end
end

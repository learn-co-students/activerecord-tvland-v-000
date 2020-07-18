class AddCharactersToActor < ActiveRecord::Migration
  def change
    add_column  :characters, :actor_id, :text
  end
end

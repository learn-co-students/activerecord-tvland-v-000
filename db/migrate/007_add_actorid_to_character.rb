class AddActoridToCharacter < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :actor_id, :integer 
  end
end

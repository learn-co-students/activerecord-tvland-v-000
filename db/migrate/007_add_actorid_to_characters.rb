class AddActoridToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :actor_id, :string
  end
end

class AddActorToCharacters < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :actor, :string
  end
end

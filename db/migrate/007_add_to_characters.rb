class AddToCharacters < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :actor_id, :string
    add_column :characters, :catchphrase, :string
  end
end

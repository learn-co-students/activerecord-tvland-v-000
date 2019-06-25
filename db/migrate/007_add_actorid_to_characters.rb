class AddActoridToCharacters < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :actor_id, :integer
    add_column :characters, :catchphrase, :string
    add_column :characters, :network_id, :integer
  end
end

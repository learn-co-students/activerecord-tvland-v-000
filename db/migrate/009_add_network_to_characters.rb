class AddNetworkToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :network_id, :integer
  end
end

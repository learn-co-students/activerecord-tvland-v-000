class AddNetworkidToCharacters < ActiveRecord::Migration[4.2]
    def change
        add_column :characters, :network_id, :integer
    end
end

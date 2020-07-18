class AddNetworkidToCharacters < ActiveRecord::Migration
	def change
		change_table :characters do |t|
			t.integer :network_id
		end
	end
end
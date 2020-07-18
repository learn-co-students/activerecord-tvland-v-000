class RemoveNetworkidAddActoridToCharacters < ActiveRecord::Migration
	def change
		change_table :characters do |t|
			t.remove :network_id
			t.integer :actor_id
		end
	end
end
class FixCharactersExtraColumn < ActiveRecord::Migration[4.2]
	def change
		remove_column :characters, :character_id, :integer
		add_column :characters, :actor_id, :integer
	end
end

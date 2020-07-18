class CreateCharacterShows < ActiveRecord::Migration
	def change 
		create_table :character_shows do |t|	
			t.integer :character_id
			t.integer :show_id
		end
	end
end
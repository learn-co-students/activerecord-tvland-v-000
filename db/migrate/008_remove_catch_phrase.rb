class RemoveCatchPhrase < ActiveRecord::Migration
	def change 
		remove_column :characters, :catch_phrase, :string
	end
end
	
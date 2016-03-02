class CharacterPhrase < ActiveRecord::Migration

	def change
		add_column :characters, :catch_phrase, :string
	end
end
class ChangeGenresToGenre < ActiveRecord::Migration[5.1]
	def change
		rename_column :shows, :genres, :genre
	end
end

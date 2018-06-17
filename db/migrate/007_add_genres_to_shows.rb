class AddGenresToShows < ActiveRecord::Migration[5.1]
	def change
		add_column :shows, :genres, :string
	end
end

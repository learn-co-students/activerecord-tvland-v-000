class AddDayToShows < ActiveRecord::Migration
	def change
		change_table :shows do |t|
			t.string :day 
		end
	end
end
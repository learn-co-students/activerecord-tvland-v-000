class RenameCharaterTable < ActiveRecord::Migration
	def change 
		rename_table :charactors, :characters
	end
end
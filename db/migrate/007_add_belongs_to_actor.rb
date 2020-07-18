class AddBelongsToActor < ActiveRecord::Migration
	def change
		add_reference :characters, :actor, foregin_key: true 
	end
end
class CreateCharacters < ActiveRecord::Migration
	create_table :charactors do |t|
		t.string  :name
		t.integer :show_id
	end
end
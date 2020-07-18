class CreateCharacters < ActiveRecord::Migration
    
    def change
        create_table :characters do |t|
            t.string :name
            t.integer :show_id
        end# of do
    end# of change
    
end# of class
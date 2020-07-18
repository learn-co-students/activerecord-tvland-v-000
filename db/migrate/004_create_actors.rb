class CreateActors < ActiveRecord::Migration
    
    def change
        create_table :actors do |t|
            t.string :first_name
            t.string :last_name
        end# of do
    end# of change
    
end# of class
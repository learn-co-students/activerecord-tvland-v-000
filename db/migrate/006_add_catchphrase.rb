class AddCatchphrase < ActiveRecord::Migration
    def change
        change_table :characters do |t|
            t.string :catchphrase
            end
        
    end

end
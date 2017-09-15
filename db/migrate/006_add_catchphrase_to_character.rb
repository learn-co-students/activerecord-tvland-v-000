class AddCatchphraseToCharacter < ActiveRecord::Migration
    
    def change
    add_column :characters, :catchphrase, :string
    end# of change
    
    
end# of class
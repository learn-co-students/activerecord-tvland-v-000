class AddCatchphraseToCharacter < ActiveRecord::Migration[5.0]
   def change
     add_column :characters, :catchphrase, :text
   end
 end

class CreateCharacters < ActiverRecord::Migration[5.0]

 def change
   create_table :characters do |t|
     t.string :name
     t.integer :show_id
   end
 end

end

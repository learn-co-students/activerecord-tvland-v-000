class CreateCharacters < ActiveRecord::Migration[4.2]

 def change
  create_table :characters do |t|
  t.string :catchphrase
  t.string :name
  end
 end

end

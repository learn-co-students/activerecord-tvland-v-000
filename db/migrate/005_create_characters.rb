class CreateCharacters < ActiveRecord::Migration[4.2]
  
  def change 
    create_table :characters do |character|
      character.string :name 
      character.integer :show_id 
    end 
  end 
end 
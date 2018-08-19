class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.string :name 
      t.integer :show_id
      t.integer :actor_id 
      #Had to get help for this part. This is much easier than the procedural way of doing it, such as adding this character to the show in the models folder
      t.belongs_to :actor, index: true
      t.belongs_to :show, index: true
    end
  end
end
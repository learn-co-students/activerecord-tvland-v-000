#should have the same name as the file
class CreateCharacters < ActiveRecord::Migration
  #create a change column
  def change
    #make the table, with the name from the create, as a symbol
    create_table :characters do |t|
      t.string :name
      t.integer :actor_id
      t.integer :show_id
    end
  end

end
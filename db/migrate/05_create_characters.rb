class CreateCharacters < ActiveRecord::Migration[4.2]

  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
      t.integer :actor_id
      t.string :catchphrase 
    end
  end
end

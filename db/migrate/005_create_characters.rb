class CreateCharacters < ActiveRecord::Migration
    def change
      create_table :characters do |t|
      t.string :name
      t.integer :actor_id
      t.integer :show_id
      t.string :catchphrase
    end
  end
end

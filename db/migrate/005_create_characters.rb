class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.text :name
      t.text :catchphrase
      t.integer :show_id
      t.integer :actor_id
      t.timestamps
    end
  end
end

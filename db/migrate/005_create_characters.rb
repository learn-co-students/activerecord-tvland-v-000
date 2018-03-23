class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :actor
      t.string :show
      t.string :catchphrase
      t.integer :actor_id
      t.integer :show_id
    end
  end
end

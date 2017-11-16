class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |col|
      col.string :name
      col.string :catchphrase
      col.integer :show_id
      col.integer :actor_id
    end
  end
end

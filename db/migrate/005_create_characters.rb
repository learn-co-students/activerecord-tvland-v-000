
class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :actor_id
      t.integer :show_id
      t.string :catchphrase
    end
  end
end